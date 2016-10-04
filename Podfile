platform :osx, '10.11'

def shared_pods
    pod 'AFNetworking', '~> 3.1', :inhibit_warnings => true
end

target 'CatDirectory' do
    shared_pods
    pod 'Mantle', '~> 2.0', :inhibit_warnings => true
end

target 'CatDirectoryUnitTests' do
    shared_pods
    pod 'Specta', '1.0.2', :inhibit_warnings => true
    pod 'Expecta', '1.0.0', :inhibit_warnings => true
    pod 'OCMockito', '2.0.1', :inhibit_warnings => true
end

target 'CatDirectoryIntegrationTests' do
  shared_pods
  pod 'Specta', '1.0.2', :inhibit_warnings => true
  pod 'Expecta', '1.0.0', :inhibit_warnings => true
  pod 'OCMockito', '2.0.1', :inhibit_warnings => true
  pod 'Nocilla', :inhibit_warnings => true
end
