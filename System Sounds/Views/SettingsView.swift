//
//  SettingsView.swift
//  System Sounds
//
//  Created by Rishi Jansari on 27/02/2025.
//

import SwiftData
import SwiftUI

struct SettingsView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.customAccentColor) private var customColor
    
    let settingsSheetSize: PresentationDetent
    
    @State private var localColor: String = ""
    @State private var viewModel = ViewModel()
    
    var body: some View {
        Form {
            Section("Accent Color") {
                pickerToShow
            }
            Section("Favourites") {
                removeAllFavouritesButton
            }
        }
        .tint(localColor.hexToColor())
        .alert("Are you sure you want to remove all favourites?", isPresented: $viewModel.isShowingConfirmationAlert) {
            confirmationAlertButtons
        }
        .alert(viewModel.completionAlert.title, isPresented: $viewModel.isShowingCompletionAlert) { } message: {
            Text(viewModel.completionAlert.message)
        }
        .onChange(of: viewModel.isShowingCompletionAlert, viewModel.resetCompletionAlertFields)
        .onChange(of: localColor, changeEnvironmentColor)
        .onAppear(perform: setVars)
    }
    
    private var pickerToShow: some View {
        Group {
            switch settingsSheetSize {
                case .large:
                    Picker("Accent Color Picker", selection: $localColor) {
                        ForEach(Color.rainbowColors, id: \.self) { color in
                            HStack(spacing: 14) {
                                Image(systemName: "paintbrush")
                                    .foregroundStyle(color.hexToColor())
                                    .symbolVariant(localColor == color ? .fill : .none)
                                    .symbolEffect(.wiggle.counterClockwise, value: localColor == color)
                                    .contentTransition(.symbolEffect(.replace))
                                
                                Text(color.hexAsColorName().capitalized)
                            }
                        }
                    }
                    .pickerStyle(.inline)
                case .medium:
                    Picker("Accent Color Picker", selection: $localColor) {
                        ForEach(Color.rainbowColors, id: \.self) { color in
                            Image(systemName: "paintbrush")
                                .foregroundStyle(color.hexToColor())
                                .symbolVariant(localColor == color ? .fill : .none)
                        }
                    }
                    .pickerStyle(.wheel)
                default:
                    VStack(spacing: 14) {
                        Picker("Accent Color Picker", selection: $localColor.animation()) {
                            ForEach(Color.rainbowColors, id: \.self) { color in
                                Circle()
                                    .frame(width: 5, height: 5)
                            }
                        }
                        .pickerStyle(.segmented)
                        ProgressView(value: viewModel.progressValue(localColor))
                    }
            }
        }
        .labelsHidden()
        .sensoryFeedback(.success, trigger: localColor)
        .sensoryFeedback(trigger: viewModel.isShowingConfirmationAlert) { _, newValue in
            newValue ? .warning : .pathComplete
        }
        .sensoryFeedback(trigger: viewModel.isShowingCompletionAlert) { _, newValue in
            newValue ? (viewModel.completionAlert.message == "" ? .success : .error) : .none
        }
    }
    
    private var removeAllFavouritesButton: some View {
        Button("Remove All Favourites", role: .destructive, action: viewModel.showConfirmationAlert)
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
    private var confirmationAlertButtons: some View {
        Group {
            Button("Cancel", role: .cancel) { }
            Button("Remove All", role: .destructive, action: viewModel.removeAllFavourites)
        }
    }
    
    private func setVars() {
        localColor = customColor.color
        viewModel.modelContext = modelContext
    }
    
    private func changeEnvironmentColor(oldValue: String, newValue: String) {
        customColor.color = newValue
    }
}

#Preview {
    SettingsView(settingsSheetSize: .medium)
}
