using UnityEngine;
using System.Collections;

public class Laser : MonoBehaviour {

    PlayerLife playerLife;

    void Start()
    {
        playerLife = FindObjectOfType<PlayerLife>();
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            playerLife.Die();
        }
    }
}
