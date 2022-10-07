
public protocol MeshDataProvider {
	var grid: MeshGrid<ControlPoint> { get }
}

public class StaticMeshDataProvider: MeshDataProvider {
    public var grid: MeshGrid<ControlPoint>
	
    public init(grid: MeshGrid<ControlPoint>) {
		self.grid = grid
	}
}
