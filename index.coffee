"use strict"
class NeverUseStrict
    rule:
        name: "strict"
        level: "error"
        message: "Missing \"use strict\" statement"
        description: """
            This rule triggers for each file that begins with "use strict"

            See also https://www.npmjs.com/package/coffeelint-always-use-strict
            """

    lintAST: ({expressions}, {createError}) ->
        [first, ...] = expressions
        if \
                first.constructor.name is "Value" and \
                first.base.constructor.name is "StringLiteral" and \
                first.base.value in ['"use strict"', "'use strict'"]
            @errors.push(createError({
                lineNumber: first.locationData.first_line + 1,
                message: "\"use strict\" is not allowed"
            }))
        undefined
module.exports = NeverUseStrict
