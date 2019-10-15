# enables us to start the app with:
#   $ rake start
# instead of:
#   $ foreman start -p 3000

task :start do
    exec 'foreman start -p 3000'
end