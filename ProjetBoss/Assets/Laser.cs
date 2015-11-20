using UnityEngine;
using System.Collections;

public class Laser : MonoBehaviour {

	void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            Debug.Log("ok");
        }
    }
}
