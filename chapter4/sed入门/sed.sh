# sed replace:
# sed 's/pattern/replace_string' file
# use -i to applied to the origin file
# sed -i 's/text/replace' file
# use /g --golbal
# sed 's/pattern/replace_string/g' file


# sed 's/pattern/replace_string/Ng' 
echo thisthisthisthis | sed 's/this/THIS/2g'
# use any delimited symbol
sed 's:text:replace:g'
# use \  \|==|
sed 's|te\|xt|replace:g'