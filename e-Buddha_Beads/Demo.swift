//
//  Demo.swift
//  e-Buddha_Beads
//
//  Created by Jerry on 2022/9/29.
//

import SwiftUI
import CoreHaptics

struct Demo: View {
    var index = 0
    var body: some View {
        ZStack {
            Bead(bead: initBeads(index: index, offset: -1))
            Bead(bead: initBeads(index: index, offset: -2))
            Bead(bead: initBeads(index: index, offset: -3))
            Bead(bead: initBeads(index: index, offset: 1))
            Bead(bead: initBeads(index: index, offset: 2))
            Bead(bead: initBeads(index: index, offset: 3))
            Bead(bead: initBeads(index: index, offset: 0))
        }
    }
}

private func initBeads(index: Int, offset: Int) -> BeadModel {
    var bead: BeadModel
    let trueIndex = index + offset
    switch trueIndex {
    case 3, -4:
        bead = BeadModel(beadFrameWidth: 0, beadOffsite: -255, color: Color(white: 1.0, opacity: 0))
        return bead
    case 2 ,-5:
        bead = BeadModel(beadFrameWidth: 80, beadOffsite: -215, color: Color("ThirdBead"))
        return bead
    case 1, -6:
        bead = BeadModel(beadFrameWidth: 100, beadOffsite: -125, color: Color("SecondBead"))
        return bead
    case 0:
        bead = BeadModel(beadFrameWidth: 150, beadOffsite: 0, color: .orange)
        return bead
    case -1, 6:
        bead = BeadModel(beadFrameWidth: 100, beadOffsite: 125, color: Color("SecondBead"))
        return bead
    case -2, 5:
        bead = BeadModel(beadFrameWidth: 80, beadOffsite: 215, color: Color("ThirdBead"))
        return bead
    case -3, 4:
        bead = BeadModel(beadFrameWidth: 0, beadOffsite: 255, color: Color(white: 1.0, opacity: 0))
        return bead
    default:
        return BeadModel(beadFrameWidth: 150, beadOffsite: 0, color: Color(.gray))
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}
