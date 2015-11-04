using UnityEngine;
using System.Collections;

public class StartExpl : MonoBehaviour {

    bool start = false;
    public BombSpawn script;
    float r;
    float g;
    float b;


	void Start () {
       
	}
	

	void Update () {
        r = Random.Range(0f, 1f);
        g = Random.Range(0f, 1f);
        b = Random.Range(0f, 1f);
        this.gameObject.GetComponent<Renderer>().material.color = new Color(r, g, b);
        if (start) 
        {
            fun("Wall");
            //fun("Ground");
            Destroy(this.gameObject);
        }
	}

    void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            start = true;
            script.startspawn = true;
        }
    }

    void fun(string tag) 
    {
        GameObject[] objs = GameObject.FindGameObjectsWithTag(tag);
        foreach (GameObject go in objs)
        {
            go.AddComponent<Rigidbody>();
            Vector3 orig = new Vector3(12f, 0f, 12f);
            go.GetComponent<Rigidbody>().AddExplosionForce(1000f, orig, 100f);
        }
    }
}
