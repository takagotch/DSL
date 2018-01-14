class A < BasicObject
  def method_missing(meth, *args)
  end
end

UNPROXIED_METHODS = %w(__send__ __id__ nil? send object_id
extend instance_eval initialize block_given? raise caller
method)

(instance_methods + private_instance_methods).each do |method|
  undef_method(method) unless UNPROXIED_METHODS.include?
  (method.to_s)
end

#instance_eval
class Awesome
  class Config
    attr_accessor :hoge
  end

  def self.configure(&block)
    instance_eval &block
  end

  def self.config
    @config ||= Config.new
  end
end

Awesome.configure do
  config.hoge = "taka"
end

p Awesome.config.hoge #=> taka

#
def foo(&block)
  hoge =Hoge.new
  hoge.instance_eval &block
end

foo do
	taka
	taka
end

#
def foo(&block)
  hoge = Hoge.new
  yield hoge
end

foo.do |taka|
  hoge.taka
  hoge.bar
end

/*定義||設定　　代入||メソッド*/
#定義
#task :test
#get "/" #GET / HTTP/1.1
Taks.register :add do |a,b|
  a + b
end

task :install do |task|
  task.desc = "install binaries"
  task.dependencies = [:build, :test]
end

#設定, 代入
#cache_control :Cache-Control
#

#configure
# = 代入
# NO override
Klass.configure do |config|
  config.hoge = "taka"
end
# method
# yes override
Klass.configure do
  hoge "taka"
end

#
#source "https://rubygems.org"
#gem "rake"
#
#ruby("test/run-test.rb")


