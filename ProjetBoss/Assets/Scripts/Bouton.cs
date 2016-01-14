using UnityEngine;
using System.Collections;

public class Bouton : MonoBehaviour {

	public GameObject ascenseur;
	PorteAscenseur porte;
    bool gameLaunch = false;
    public Light light;
    bool activateLight = false;
    float timer = 0f;

	public enum TYPE
	{
		OUVERTURE,
	}

	public TYPE monType;

	// Use this for initialization
	void Start () {
		porte = ascenseur.GetComponent<PorteAscenseur>();
	}
	
	// Update is called once per frame
	void Update () {
        if (activateLight)
        {
            var height = (Mathf.Sin(Mathf.PI * timer) + 2);
            timer += Time.deltaTime;
            light.intensity = height;
        }
	}
	public void utiliserBouton()
	{
		if(!gameLaunch || monType == TYPE.OUVERTURE)
		{
            gameLaunch = true;
            activateLight = true;
			GameObject Cam = GameObject.FindGameObjectWithTag("MainCamera");
			Cam.GetComponent<ScreenShakeScript>().shakeAmount = 0.005f;
			Cam.GetComponent<ScreenShakeScript>().shake = 10f;
            GetComponent<AudioSource>().Play();
            Invoke("launchGame", 10);
		}
	}


    void launchGame()
    {
        activateLight = false;
        porte.ouverturePorte();
    }
}
