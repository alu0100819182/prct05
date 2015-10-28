$:.unshift File.dirname(__FILE__) + 'lib'

task :default => :tu

desc "Pruebas unitarias de la clase Fraccion"
task :tu do
  sh "ruby -I. test/fraccion_testunit.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/fraccion_testunit.rb -n /simple/"
end