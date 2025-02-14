require 'menu'

describe Menu do

  describe "test print_menu" do
    let!(:menu)  { Menu.new }

    it "prints the MEAL_LIST" do
      expect { menu.print_menu }.to output(Menu::MEALS_LIST.to_s).to_stdout
    end
  end

  describe "test add_to_basket method" do
    let!(:menu)  { Menu.new }

    context "user adds item(s) to the basket" do
      it "stores one meal in the basket" do
        menu.choose_meal(2)
        expect(menu.basket).to eq([["KFC", 6]])
      end
    
      it "stores several meals in the basket" do
        menu.choose_meal(2)
        menu.choose_meal(4)
        expect(menu.basket).to eq([["KFC", 6], ["Bibimba_chicken", 10]])
      end
    end
  end

  describe "test add_to_receipt method" do
    let!(:menu)  { Menu.new }

    context "user adds item(s) to the basket" do
      it "stores one price on the receipt_list" do
        menu.choose_meal(4)
        expect(menu.receipt_list).to eq([10])
      end
    
      it "stores multiple prices on the receipt_list" do
        menu.choose_meal(3)
        menu.choose_meal(6)
        expect(menu.receipt_list).to eq([12.50, 4])
      end
    end
  end

  describe "Edge cases" do
    let!(:menu)  { Menu.new }

    it "raises an error if user doesn't input an Integer to select a meal" do
      expect { menu.choose_meal("kimbab") }.to raise_error "Please, input a number"
    end

    it "raises an error if user doen't input anything to select a meal" do
      expect { menu.choose_meal(nil) }.to raise_error "Please, input a number"
    end

    it "raises an error if user chooses as number that doesn't correspond to an option" do
      expect { menu.choose_meal(0 - Menu::MEALS_LIST.size) }.to raise_error "sorry we don't have this item"
      expect { menu.choose_meal(Menu::MEALS_LIST.size + 2) }.to raise_error "sorry we don't have this item"
    end

    it "raises an erro if the user tries to checkout with nothing in his basket" do
      menu = Menu.new #empty basket
      expect { menu.choose_meal(Menu::MEALS_LIST.keys[-1]) }.to raise_error "sorry we don't have this item"
    end
  end
end
