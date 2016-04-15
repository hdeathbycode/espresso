//
//  TrainableLayerProtocol.swift
//  espresso
//
//  Created by Zhihao Li on 4/15/16.
//  Copyright © 2016 CMU. All rights reserved.
//

import Foundation

protocol TrainableLayerProtocol : LayerProtocol {
  var weights : Tensor { get set }

  func initWeights()
  /** Take in the gradient of the weights, and update weights
   The update procedure should be conducted by the solver but, besides the global learning rate and other parameters, also consider the local learning rate and parameters (weight decay and etc.)
   */
  func updateWeights(weightGrad: Tensor) // TODO
}