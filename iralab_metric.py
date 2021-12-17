import numpy as np
import open3d.linux.open3d as o3d


def calculate_error(cloud1: o3d.PointCloud.PointCloud, cloud2: o3d.PointCloud.PointCloud) -> float:
    assert(len(cloud1.points) != len(cloud2.points), "len(cloud1.points) != len(cloud2.points)")

    '''
    if len(cloud1.points) != len(cloud2.points):
        if len(cloud1.points) > len(cloud2.points):
            cloud1 = o3d.uniform_down_sample(cloud1,len(cloud2.points))
        else:
            cloud2 = o3d.uniform_down_sample(cloud2,len(cloud1.points))
    '''
    #print(len(cloud1.points))
    #print(len(cloud2.points))
    #centroid, _ = cloud1.compute_mean_and_covariance()
    #perche non vai?
    centroid, _ = o3d.compute_point_cloud_mean_and_covariance(cloud1)
    weights = np.linalg.norm(np.asarray(cloud1.points) - centroid, 2, axis=1)
    distances = np.linalg.norm(np.asarray(cloud1.points) - np.asarray(cloud2.points), 2, axis=1) / len(weights)
    return np.sum(distances / weights)