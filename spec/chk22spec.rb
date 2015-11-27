 require_relative '../models/ckpt22ruby'

describe "#binary_search" do 
	it "searches AddressBook for a non-existent entry" do
		book.import_from_csv("entries.csv")
		entry = book.binary_search("Dan")
		expect(entry).to be nil
	end
	it "searches AddressBook for Bill" do 
		book.import_from_csv("entries.csv")
		entry = book.binary_search("Bill")
		expect(entry).to be_a Entry
		check_entry(entry, "Bill", "555-555-4854", "bill@blocmail.com")
	end

     it "searches AddressBook for Bob" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Bob")
       expect(entry).to be_a Entry
       check_entry(entry, "Bob", "555-555-5415", "bob@blocmail.com")
     end
 
     it "searches AddressBook for Joe" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Joe")
       expect(entry).to be_a Entry
       check_entry(entry, "Joe", "555-555-3660", "joe@blocmail.com")
     end
 
     it "searches AddressBook for Sally" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Sally")
       expect(entry).to be_a Entry
       check_entry(entry, "Sally", "555-555-4646", "sally@blocmail.com")
     end
 
     it "searches AddressBook for Sussie" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Sussie")
       expect(entry).to be_a Entry
       check_entry(entry, "Sussie", "555-555-2036", "sussie@blocmail.com")
     end
      it "searches AddressBook for Billy" do
       book.import_from_csv("entries.csv")
       entry = book.binary_search("Billy")
       expect(entry).to be_nil
     end
 end

	
end