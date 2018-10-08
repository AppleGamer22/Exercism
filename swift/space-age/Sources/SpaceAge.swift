//Solution goes in Sources
import Foundation

class SpaceAge {
    var seconds: Double
    var onEarth: Double
    var onMercury: Double
    var onVenus: Double
    var onMars: Double
    var onJupiter: Double
    var onSaturn: Double
    var onUranus: Double
    var onNeptune: Double
    init(time_in_seconds: Int) {
        seconds = Double(time_in_seconds)
        onEarth = Double(round(seconds / 31_556_952 * 100) / 100)
        onMercury = Double(round(seconds / 7_600_387.751258 * 100) / 100)
        onVenus = Double(round(seconds / 19_413_750.404352 * 100) / 100)
        onMars = Double(round(seconds / 59_352_813.921442 * 100) / 100)
        onJupiter = Double(round(seconds / 374_347_972.14948 * 100) / 100)
        onSaturn = Double(round(seconds / 929_273_280.906096 * 100) / 100)
        onUranus = Double(round(seconds / 2_651_315_576.413392 * 100) / 100)
        onNeptune = Double(round(seconds / 5_200_311_775.25664 * 100) / 100)
    }
}
