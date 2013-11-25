
#any? any? [{ |obj| block }] → true or false
#all? all? [{ |obj| block } ] → true or false
#none? none? [{ |obj| block }] → true or false
#each ...
#map/collect  map { |obj| block } → array
			#map → an_enumerator

#Code generates a random cart of items and a random set of coupons. 
#Implement a method #checkout to calculate total cost of a cart of items 
#and apply discounts and coupons# #as necessary.


ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
			{"KALE" => {:price => 3.00,:clearance => false}},
			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
			{"ALMONDS" => {:price => 9.00, :clearance => false}},
			{"TEMPEH" => {:price => 3.00,:clearance => true}},
			{"CHEESE" => {:price => 6.50,:clearance => false}},
			{"BEER" => {:price => 13.00, :clearance => false}},
			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
			{"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
			{:item=>"BEER", :num=>2, :cost=>20.00},
			{:item=>"CHEESE", :num=>3, :cost=>15.00}]



##randomly generates a cart of items
def generateCart
	$cart = []
	rand(20).times do
		$cart.push(ITEMS.sample)  
	end
	puts $cart
end

##make hashes
def makeHashes
end

##randomly generates set of coupons
def generateCoups
	coups = []
	rand(2).times do
		coups.push(COUPS.sample)
	end
	puts coups
end

generateCart
generateCoups
item_no = $cart.each {|key| puts $cart.count(key)}




#1  #count on array
#count # of each item
#turn all items into hashes
#1 the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
#  For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
 # it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart

