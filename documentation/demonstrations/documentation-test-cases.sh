#!/bin/bash
# set verbose mode, 
# see http://stackoverflow.com/questions/2853803/in-a-shell-script-echo-shell-commands-as-they-are-executed
loopmax=0
. ../../test-cases/common.sh

# if silentMode is not active, verbose
[[ $silentMode == 0 ]] && set -x 

# demonstration
latexindent.pl -s filecontents1.tex -o filecontents1-default.tex
latexindent.pl -s tikzset.tex -o tikzset-default.tex
latexindent.pl -s pstricks.tex --outputfile pstricks-default.tex
latexindent.pl -s pstricks.tex --outputfile pstricks-default.tex -logfile cmh.log

# alignment
latexindent.pl -s tabular1.tex --outputfile tabular1-default.tex -logfile cmh.log
latexindent.pl -s -l tabular.yaml tabular1.tex --outputfile tabular1-advanced.tex 
latexindent.pl -s -l tabular1.yaml tabular1.tex --outputfile tabular1-advanced-3spaces.tex 
latexindent.pl -s matrix1.tex -o matrix1-default.tex
# items
latexindent.pl -s items1.tex -o items1-default.tex
# special
latexindent.pl -s special1.tex -o special1-default.tex
# headings
latexindent.pl -s headings1.tex -o headings1-mod1.tex -l=headings1.yaml
latexindent.pl -s headings1.tex -o headings1-mod2.tex -l=headings2.yaml
# previously important example
latexindent.pl -s previously-important-example.tex -o previously-important-example-default.tex
##### ENVIRONMENTS ######
##### ENVIRONMENTS ######
##### ENVIRONMENTS ######
# noAdditionalIndent, environment
latexindent.pl -s myenvironment-simple.tex -o myenvironment-simple-noAdd-body1.tex -l myenv-noAdd1.yaml
latexindent.pl -s myenvironment-simple.tex -o myenvironment-simple-noAdd-body2.tex -l myenv-noAdd2.yaml
latexindent.pl -s myenvironment-simple.tex -o myenvironment-simple-noAdd-body3.tex -l myenv-noAdd3.yaml
latexindent.pl -s myenvironment-simple.tex -o myenvironment-simple-noAdd-body4.tex -l myenv-noAdd4.yaml
# arguments
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-noAdd-body1.tex -l myenv-noAdd1.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-noAdd5.tex -l myenv-noAdd5.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-noAdd6.tex -l myenv-noAdd6.yaml
# indentRules
latexindent.pl -s myenvironment-simple.tex -l myenv-rules1.yaml -o myenv-rules1.tex
latexindent.pl -s myenvironment-simple.tex -l myenv-rules2.yaml -o myenv-rules2.tex
# arguments
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules1.tex -l myenv-rules1.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules3.tex -l myenv-rules3.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules4.tex -l myenv-rules4.yaml
# noAdditionalIndentGlobal
# body
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules1-noAddGlobal1.tex -l env-noAdditionalGlobal.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules1-noAddGlobal2.tex -l myenv-rules1.yaml,env-noAdditionalGlobal.yaml
# arguments
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules1-noAddGlobal3.tex -l opt-args-no-add-glob.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-rules1-noAddGlobal4.tex -l mand-args-no-add-glob.yaml
# indentRules
# body
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-global-rules1.tex -l env-indentRules.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-global-rules2.tex -l myenv-rules1.yaml,env-indentRules.yaml
# arguments
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-global-rules3.tex -l opt-args-indent-rules-glob.yaml
latexindent.pl -s myenvironment-args.tex -o myenvironment-args-global-rules4.tex -l mand-args-indent-rules-glob.yaml
# items
latexindent.pl -s items1.tex -o items1-noAdd1.tex -local item-noAdd1.yaml
latexindent.pl -s items1.tex -o items1-rules1.tex -local item-rules1.yaml
# global rules
latexindent.pl -s items1.tex -o items1-no-add-global.tex -local items-noAdditionalGlobal.yaml
latexindent.pl -s items1.tex -o items1-rules-global.tex -local items-indentRulesGlobal.yaml
##### COMMANDS ######
##### COMMANDS ######
##### COMMANDS ######
latexindent.pl -s mycommand.tex -o mycommand-default.tex
# noAdditionalIndent
latexindent.pl -s mycommand.tex -o mycommand-noAdd1.tex -local mycommand-noAdd1.yaml
latexindent.pl -s mycommand.tex -o mycommand-noAdd2.tex -local mycommand-noAdd2.yaml
latexindent.pl -s mycommand.tex -o mycommand-noAdd3.tex -local mycommand-noAdd3.yaml
latexindent.pl -s mycommand.tex -o mycommand-noAdd4.tex -local mycommand-noAdd4.yaml
latexindent.pl -s mycommand.tex -o mycommand-noAdd5.tex -local mycommand-noAdd5.yaml
latexindent.pl -s mycommand.tex -o mycommand-noAdd6.tex -local mycommand-noAdd6.yaml
##### ifElseFi ######
##### ifElseFi ######
##### ifElseFi ######
latexindent.pl -s ifelsefi1.tex -o ifelsefi1-default.tex
latexindent.pl -s ifelsefi1.tex -o ifelsefi1-noAdd.tex -local ifnum-noAdd.yaml
latexindent.pl -s ifelsefi1.tex -o ifelsefi1-indent-rules.tex -local ifnum-indent-rules.yaml
latexindent.pl -s ifelsefi1.tex -local ifelsefi-noAdd-glob.yaml -o ifelsefi1-noAdd-glob.tex 
latexindent.pl -s ifelsefi1.tex -l ifelsefi-indent-rules-global.yaml -o ifelsefi1-indent-rules-global.tex 
##### special ######
##### special ######
##### special ######
latexindent.pl -s special1.tex -o special1-noAdd.tex -local displayMath-noAdd.yaml
latexindent.pl -s special1.tex -o special1-indent-rules.tex -local displayMath-indent-rules.yaml
latexindent.pl -s special1.tex -local special-noAdd-glob.yaml -o special1-noAdd-glob.tex 
latexindent.pl -s special1.tex -l special-indent-rules-global.yaml -o special1-indent-rules-global.tex 
[[ $noisyMode == 1 ]] && makenoise
git status
