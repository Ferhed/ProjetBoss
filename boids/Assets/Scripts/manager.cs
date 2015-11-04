using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class manager : MonoBehaviour {

	public GameObject boidPrefab;
	List<boids> boidList;
	public float minimumDistanceToFollow = 10f;
	float range =  10f;

	// Use this for initialization
	void Start () {
		boidList = new List<boids>();

		for (int i = 0; i < 32; i++) {
			Vector3 position = new Vector3(Random.Range(-range, range),Random.Range(-range, range),Random.Range(-range, range));
			AddBoid(1 , position);
		
		}
	}
	
	// Update is called once per frame
	void Update () {
	
		for (int current = 0; current < boidList.Count; current++) {
			boids boid = boidList[current];
			Vector3 vectorCohesion = Vector3.zero;
			Vector3 vectorSeparation  = Vector3.zero;
			Vector3 vectorAlignement = Vector3.zero;

			int countAlignement = 0;

			Vector3 vectorTarget = boid.target - boid.position;

			for(int other = 0; other < boidList.Count; ++other)
			{
				boids boidOther = boidList[other];
				if(current != other)
				{
					float distance = Vector3.Distance(boid.position, boidOther.position);
					distance -= boid.size + boidOther.size;
					if(distance <= 0f)
					{
						vectorSeparation += boid.position - boidOther.position;
					}
					if(distance <= minimumDistanceToFollow)
					{
						vectorAlignement += boidOther.velocity;
						++countAlignement;
					}
					vectorCohesion += boidOther.position- boid.position;
				}
			}
			vectorCohesion /= (float)(boidList.Count -1);

			if(countAlignement > 0)
			{
				vectorAlignement /= countAlignement;
			}
		
			boid.ApplyVelocity(vectorCohesion * boid.scaleCohesion + vectorSeparation * boid.scaleSeparation + vectorAlignement * boid.scaleAlignement + vectorTarget * boid.scaleTarget);
		}
	}


	void AddBoid(float size , Vector3 position)
	{
		GameObject boidGameObject = GameObject.Instantiate (boidPrefab) as GameObject;

		boids boid = boidGameObject.AddComponent<boids> ();

		boid.SetSize (size);
		boid.SetPosition (position);
		boid.scaleCohesion = 0.0001f;
		boid.scaleAlignement = 0.001f;
		boid.scaleTarget = 0.005f;
		boid.scaleSeparation = 0.2f;
		boid.friction = 0.99f;

		boidList.Add (boid);

	}
}
