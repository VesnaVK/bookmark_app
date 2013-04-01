require 'spec_helper'

    # New bookmark page
    describe "View for entering bookmarks" do
    
        it "should have the content 'Create a bookmark'" do
            visit '/bookmarks/new'
              page.should have_content('Create a bookmark')
        end
    
        it "should have the content 'Show all bookmarks'" do
            visit '/bookmarks/new'
              page.should have_content('Show all bookmarks')
        end

    end


    # Show all bookmarks page
    describe "View for listing all bookmarks" do
    
        it "should have the content 'Create a bookmark'" do
              visit '/bookmarks/'
              page.should have_content('Create a bookmark')
        end
    
        it "should have the content 'Show all bookmarks'" do
              visit '/bookmarks/'
              page.should have_content('Show all bookmarks')
        end
    end

    # Edit bookmark page
    describe "View for editing a bookmark" do
    
        it "should have the content 'Create a bookmark'" do
            visit '/bookmarks/id/edit'
              page.should have_content('Create a bookmark')
        end
    
        it "should have the content 'Show all bookmarks'" do
            visit '/bookmarks/id/edit'
              page.should have_content('Show all bookmarks')
        end
        
end

    # Show a bookmark page
    describe "View a bookmark" do
    
        it "should have the content 'Create a bookmark'" do
            visit '/bookmarks/id'
              page.should have_content('Create a bookmark')
        end
    
        it "should have the content 'Show all bookmarks'" do
            visit '/bookmarks/id'
              page.should have_content('Show all bookmarks')
        end
        
end
