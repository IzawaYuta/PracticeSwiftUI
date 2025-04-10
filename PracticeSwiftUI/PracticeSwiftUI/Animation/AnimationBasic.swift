//
//  AnimationBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/09.
//

import SwiftUI

struct AnimationBasic: View {
    
//    @State private var animationState = false
//    
//    var body: some View {
//        VStack {
//            // アニメーションを比較できるように複数のRectangleを並べる
//                // easeIn アニメーション
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//                    .offset(x: animationState ? 200 : 0)
//                    .animation(.easeIn(duration: 2), value: animationState)
//                    .overlay(Text("EaseIn").foregroundColor(.black))
//
//                // easeOut アニメーション
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                    .offset(x: animationState ? 200 : 0)
//                    .animation(.easeOut(duration: 2), value: animationState)
//                    .overlay(Text("EaseOut").foregroundColor(.black))
//                
//                // easeInOut アニメーション
//                Rectangle()
//                    .fill(Color.purple)
//                    .frame(width: 100, height: 100)
//                    .offset(x: animationState ? 200 : 0)
//                    .animation(.easeInOut(duration: 2), value: animationState)
//                    .overlay(Text("EaseInOut").foregroundColor(.black))
//            
//                // Spring アニメーション
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//                    .offset(x: animationState ? 200 : 0)
//                    .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0), value: animationState)
//                    .overlay(Text("Spring").foregroundColor(.black))
//                
//                // Bounce アニメーション
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//                    .offset(x: animationState ? 200 : 0)
//                    .animation(.interpolatingSpring(stiffness: 50, damping: 5), value: animationState)
//                    .overlay(Text("Bounce").foregroundColor(.black))
//            
//            // トグルボタンでアニメーション開始・停止
//            Button(action: {
//                // アニメーションの状態を切り替える
//                animationState.toggle()
//            }) {
//                Text(animationState ? "ストップ" : "再生")
//                    .font(.title)
//                    .padding()
//                    .background(Color.black)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
//            .padding(.top, 40)
//        }
//        .padding()
//        .frame(maxWidth: .infinity, alignment: .leading) // 左揃えに設定
//    }
    @State private var animationState = false
    
    var body: some View {
        VStack(spacing: 40) {
                Text("linear")
                .animationRow(animationState: $animationState, color: .red, animation: .linear(duration: 2))


                Text("easeIn")
                .animationRow(animationState: $animationState, color: .orange, animation: .easeIn(duration: 2))

                Text("easeOut")
                .animationRow(animationState: $animationState, color: .yellow, animation: .easeOut(duration: 2))

        
                Text("easeInOut")
                .animationRow(animationState: $animationState, color: .blue, animation: .easeInOut(duration: 2))

   
                Text("bouncy")
                .animationRow(animationState: $animationState, color: .green, animation: .bouncy(duration: 2))

            
            Text("spring")
                .animationRow(animationState: $animationState, color: .purple, animation: .spring(duration: 2))

            
            Text("interactiveSpring")
                .animationRow(animationState: $animationState, color: .gray, animation: .interactiveSpring(duration: 2))

            
            Text("interpolatingSpring")
                .animationRow(animationState: $animationState, color: .black, animation: .interpolatingSpring(duration: 2))

            
//            Text("EaseIn")
//                .animationRow(animationState: $animationState, color: .blue, animation: .linear(duration: 2))
//
//            
//            Text("EaseIn")
//                .animationRow(animationState: $animationState, color: .blue, animation: .linear(duration: 2))
//
//
//            Text("EaseIn")
//                .animationRow(animationState: $animationState, color: .blue, animation: .linear(duration: 2))


            // トグルボタンでアニメーション開始・停止
            Button(action: {
                // アニメーションの状態を切り替える
                animationState.toggle()
            }) {
                Text(animationState ? "ストップ" : "再生")
                    .font(.title3)
                    .padding()
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .padding(.top, 40)
            .frame(width: 130, height: 5)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading) // 左揃えに設定
    }
}

#Preview {
    AnimationBasic()
}

extension View {
    func animationRow(animationState: Binding<Bool>, color: Color, animation: Animation) -> some View {
        self
            .font(.title3)
            .frame(width: 100, height: 10)
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(10)
            .offset(x: animationState.wrappedValue ? 200 : 0)
            .animation(animation, value: animationState.wrappedValue)
    }
}
