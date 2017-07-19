"use strict"
chai = require "chai"
coffeeCoverage = require "coffee-coverage"
path = require "path"


chai.should()


coverageVar = coffeeCoverage.findIstanbulVariable()

    
coffeeCoverage.register({
    instrumentor: "istanbul"
    basePath: __dirname
    exclude: ["/.git", "/node_modules", "/test.coffee"]
    coverageVar: coverageVar
    writeOnExit: if coverageVar? then null else
        # Only write a coverage report if we're not running inside of Istanbul.
        path.resolve(__dirname, "coverage/coverage-coffee.json")
    initAll: true
})


"""TESTS"""


{nodes} = require "coffee-script"
AlwaysUseStrict = require "./index.coffee"


lint = (code) ->
    linter = new AlwaysUseStrict()
    linter.errors = []
    linter.lintAST(nodes(code), {createError: (x) -> x})
    return linter.errors


describe "always-use-strict", ->
    it "complains when not in strict mode", ->
        lint("""
            foo = ->
                return 1

            foo()
        """).should.have.length(1)

        lint("""
            # asd
            foo = ->
                return 1

            foo()
        """).should.have.length(1)


    it "shuts up when in strict mode", ->
        lint("""
            "use strict"
            foo = ->
                return 1

            foo()
        """).should.have.length(0)

        lint("""
            # some comment
            "use strict"
            foo = ->
                return 1

            foo()
        """).should.have.length(0)
