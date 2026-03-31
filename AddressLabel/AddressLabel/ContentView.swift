//
//  ContentView.swift
//  AddressLabel
//
//  Created by Serhii Malyshko on 31.03.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var addresses: [String] = []
    @State private var country: String = ""
    @State private var city: String = ""
    @State private var region: String = ""
    @State private var street: String = ""
    @State private var postalCode: String = ""
    
    var isFormValid: Bool {
        !country.isEmpty && !city.isEmpty && !region.isEmpty && !street.isEmpty && !postalCode.isEmpty
    }
    
    var body: some View {
        VStack {
            Text("Enter your address")
                .font(.title)
                .bold()
                .padding(.bottom, 30)
            
            VStack {
                HStack {
                    VStack {
                        TextField("Country", text: $country)
                            .autocorrectionDisabled()
                            .font(.title3)
                        Divider()
                    }
                    
                    VStack {
                        TextField("City", text: $city)
                            .autocorrectionDisabled()
                            .font(.title3)
                        Divider()
                    }
                }
            }
            
            HStack {
                VStack {
                    TextField("Region", text: $region)
                        .autocorrectionDisabled()
                        .font(.title3)
                    Divider()
                }
                
                VStack {
                    TextField("Street", text: $street)
                        .autocorrectionDisabled()
                        .font(.title3)
                    Divider()
                }
                
            }

            TextField("Postal Code", text: $postalCode)
                .autocorrectionDisabled()
                .font(.title3)
            Divider()
            
            Spacer()
            
            List() {
                ForEach(addresses, id: \.description) { address in
                    Text(address)
                }
            }
            
            VStack {
                Button {
                    let address = "\(country), \(city), \(region), \(street), \(postalCode)"
                    
                    addresses.append(address)
                    country = ""
                    city = ""
                    region = ""
                    street = ""
                    postalCode = ""
                } label: {
                    Text("Save")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .center))
                }
                .disabled(!isFormValid)
                .buttonStyle(.borderedProminent)
                .font(.title2)
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
