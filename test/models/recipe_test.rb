require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    
    def setup
        @chef = Chef.create!(chefname:"Bill", email:"helloworld@gmail.com")
        @recipe = @chef.recipes.build(name:"Vegetale", description: "I like so much this food")
     # old test without association between models: @recipe = Recipe.new(name:"Vegetale", description: "I like so much this food", chef_id: "1")
    end
    
    test "recipe without chef should be invalid" do
        @recipe.chef_id = nil
        assert_not @recipe.valid?
    end
    
    test "Recipe should be valid" do
      assert @recipe.valid?
    end
    
    test " Recipe shoudl not be invalid " do
       @recipe.name = ""
       assert_not @recipe.valid?
    end
    
    test "description should be present" do
        @recipe.description = ""
        assert_not @recipe.valid?
    end
    
    test "description less than 500 characters" do
        @recipe.description = "a"*501
        assert_not @recipe.valid?
    end
    
end