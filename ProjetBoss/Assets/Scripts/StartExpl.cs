using UnityEngine;
using System.Collections;

public class StartExpl : MonoBehaviour {

    bool start = false;
    public BombSpawn script;
    float r;
    float g;
    float b;

	// Use this for initialization
	void Start () {
       
	}
	
	// Update is called once per frame
	void Update () {
        r = Random.Range(0f, 1f);
        g = Random.Range(0f, 1f);
        b = Random.Range(0f, 1f);
        this.gameObject.GetComponent<Renderer>().material.color = new Color(r, g, b);
        if (start) 
        {
            GameObject[] objs = GameObject.FindGameObjectsWithTag("Wall");
            foreach (GameObject go in objs)
            {
                go.AddComponent<Rigidbody>();
                Vector3 orig = new Vector3(12f, 0f, 12f);
                go.GetComponent<Rigidbody>().AddExplosionForce(1000f, orig, 100f);
            }
            /*objs = GameObject.FindGameObjectsWithTag("Ground");
            foreach (GameObject go in objs)
            {
                go.AddComponent<Rigidbody>();
                Vector3 orig = new Vector3(12f, 0f, 12f);
                go.GetComponent<Rigidbody>().AddExplosionForce(1000f, orig, 100f);
            }*/
            Destroy(this.gameObject);
        }
	}

    /*void OnTriggerEnter(Collider collision)
    {
        //Debug.Log("hit");
        if (collision.gameObject.tag == "Player")
        {
            start = true;
            script.startspawn = true;
        }
    }*/

    public void StartPhase3()
    {
        start = true;
        script.startspawn = true;
    }
}
