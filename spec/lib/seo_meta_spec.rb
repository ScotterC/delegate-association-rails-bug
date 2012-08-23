require 'spec_helper'

module SeoMeta
  describe User do
    let(:user) { User.create! }

    context 'responds to' do
      it 'meta_description' do
        user.respond_to?(:meta_description).should be_true
      end

      it 'browser_title' do
        user.respond_to?(:browser_title).should be_true
      end
    end

    context 'allows us to assign to' do
      it 'meta_description' do
        user.meta_description = 'This is my description of the user for search results.'
        user.meta_description.should == 'This is my description of the user for search results.'
      end

      it 'browser_title' do
        user.browser_title = 'An awesome browser title for SEO'
        user.browser_title.should == 'An awesome browser title for SEO'
      end
    end

    context 'allows us to update' do
      it 'meta_description' do
        user.meta_description = 'This is my description of the user for search results.'
        user.save

        user.reload
        user.meta_description.should == 'This is my description of the user for search results.'
      end

      it 'browser_title' do
        user.browser_title = 'An awesome browser title for SEO'
        user.save

        user.reload
        user.browser_title.should == 'An awesome browser title for SEO'
      end
    end

    context "association" do
      context "user and collection" do
        # before(:each) do
        #   user.stub(:collection).and_return user.collection
        # end
        context 'responds to' do
          it 'meta_description' do
            user.collection.respond_to?(:meta_description).should be_true
          end

          it 'browser_title' do
            user.collection.respond_to?(:browser_title).should be_true
          end
        end

        context 'individual allows us to assign to' do
          it 'meta_description' do
            the_collection = user.collection
            the_collection.meta_description = 'This is my description of the user for search results.'
            the_collection.meta_description.should == 'This is my description of the user for search results.'
          end

          it 'browser_title' do
            the_collection = user.collection
            the_collection.browser_title = 'An awesome browser title for SEO'
            the_collection.browser_title.should == 'An awesome browser title for SEO'
          end
        end


        context 'allows us to assign to' do
          it 'meta_description' do
            user.collection.meta_description = 'This is my description of the user for search results.'
            user.collection.meta_description.should == 'This is my description of the user for search results.'
          end

          it 'browser_title' do
            user.collection.browser_title = 'An awesome browser title for SEO'
            user.collection.browser_title.should == 'An awesome browser title for SEO'
          end
        end

        context 'allows us to update' do
          it 'meta_description' do
            user.collection.meta_description = 'This is my description of the user for search results.'
            user.collection.save

            user.collection.reload
            user.collection.meta_description.should == 'This is my description of the user for search results.'
          end

          it 'browser_title' do
            user.collection.browser_title = 'An awesome browser title for SEO'
            user.collection.save

            user.collection.reload
            user.collection.browser_title.should == 'An awesome browser title for SEO'
          end
        end
      end

    end
  end
end