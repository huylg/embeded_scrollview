//
//  FlutterViewControllerRepresentable.swift
//  EmbedFlutterScrollView
//
//  Created by huy.ly on 12/7/24.
//

import Flutter
import Foundation
import SwiftUI
import FlutterPluginRegistrant

struct FlutterView: UIViewControllerRepresentable {

    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)

    init() {
        GeneratedPluginRegistrant.register(with: flutterViewController.engine!);
    }

    func makeUIViewController(context: Context) -> FlutterViewController {
        flutterViewController
    }

    func updateUIViewController(
        _ uiViewController: FlutterViewController, context: Context
    ) {

    }

    typealias UIViewControllerType = FlutterViewController

}
