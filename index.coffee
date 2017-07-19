"use strict"
class AlwaysUseStrict
    rule:
        name: "strict"
        level: "error"
        message: "Missing \"use strict\" statement"
        description: """
            This rule triggers for each file that does not begin with
            "use strict"

            See also coffeelint-never-use-strict
            """

    lintAST: ({expressions}, {createError}) ->
        [first, ...] = expressions
        if \
                first.constructor.name isnt "Value" or \
                first.base.constructor.name isnt "StringLiteral" or \
                first.base.value not in ['"use strict"', "'use strict'"]
            @errors.push(createError({
                lineNumber: first.locationData.first_line + 1,
                message: "Missing \"use strict\" at top of file"
            }))
        undefined
module.exports = AlwaysUseStrict
