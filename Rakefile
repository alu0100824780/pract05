task :default => :tu

desc "Pruebas unitarias de la clase Fraction"
task :tu do
	sh "ruby -I. test/test_fraction.rb"
end


desc "Ejecutar solo las pruebas simples"
task :simple do
	sh "ruby -I. test/test_fraction.rb -n /simple/"
end

