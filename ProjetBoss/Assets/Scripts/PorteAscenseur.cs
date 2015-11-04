using UnityEngine;
using System.Collections;

public class PorteAscenseur : MonoBehaviour {

    public GameObject porte;
	public float tempsOuverturePorte = 10f;
	private float currentTime;
	private bool caSouvre = false;
    private float ratio = 1f;

	// Use this for initialization
	void Start () {
		currentTime = tempsOuverturePorte;

	}
	
	// Update is called once per frame
	void Update () {
        if (caSouvre && currentTime != 0)
        {
            currentTime = Mathf.Max(0f, currentTime - Time.deltaTime);
            ratio = currentTime / tempsOuverturePorte;
            Debug.Log(ratio);

            porte.transform.localScale = new Vector3(1,1,ratio);
            porte.transform.localPosition = new Vector3(0, 0, (ratio / 2)-0.5f);
        }

        if(Input.GetKeyDown(KeyCode.A))
        {
            ouverturePorte();
        }

	}
    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            Destroy(gameObject);
        }
       
    }

	public void ouverturePorte()
	{
        caSouvre = true;
        porte.GetComponent<AudioSource>().Play();
	}

}
