using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class MenuEnd : MonoBehaviour {

	public GameObject papa;
	public GameObject flamme;
	public float vitesse = 10f;

	RectTransform papaRec;
	RectTransform flammeRec;
	float deplacement = 0f;
	bool monte = true;
    int widthScreen;
    float width;
    Vector2 galereWidth;
	// Use this for initialization
	void Start () {
		
		flammeRec = flamme.GetComponent<RectTransform>();
		papaRec = papa.GetComponent<RectTransform>();
        galereWidth = new Vector2(papaRec.offsetMin.x, papaRec.offsetMax.x);

	}
	
	// Update is called once per frame
	void Update () {
        widthScreen = Screen.width;

		if(Input.GetKey(KeyCode.T))
		{
            width = Mathf.Sin(Mathf.PI*Time.time*0.5f) * widthScreen/8;

			deplacement = Mathf.Min(deplacement+Time.deltaTime,0.5f);
			if(monte)
			{
				//papa.transform.position = new Vector3(0,papa.transform.position.y-1*Time.deltaTime*vitesse,0);
				papaRec.offsetMin = new Vector2(galereWidth.x-width, papaRec.offsetMin.y-1*Time.deltaTime*vitesse);
				papaRec.offsetMax = new Vector2(galereWidth.y-width, papaRec.offsetMax.y-1*Time.deltaTime*vitesse);

				if(papaRec.offsetMin.y < Screen.height/10){
					deplacement = 0;
					monte = false;
				}
			}
			else
			{
				papaRec.offsetMin = new Vector2(galereWidth.x-width, papaRec.offsetMin.y+1*Time.deltaTime*vitesse);
				papaRec.offsetMax = new Vector2(galereWidth.y-width, papaRec.offsetMax.y+1*Time.deltaTime*vitesse);
				
				if(papaRec.offsetMin.y > Screen.height - Screen.height/10*4)
                {
					deplacement = 0;
					monte = true;
				}
			}

		}
		else 
		{
			deplacement = Mathf.Max(deplacement-Time.deltaTime,0f);
		}
		flamScaling();


	}

	void flamScaling()
	{
		// min = bottom ; max = top
		if(!monte)
		{
			flammeRec.offsetMin = new Vector2(flammeRec.offsetMin.x, -91-(128*deplacement));
			flammeRec.localScale = new Vector3(1,1+deplacement,1);
		}
		else
		{
			flammeRec.offsetMin = new Vector2(flammeRec.offsetMin.x, -91+(92*deplacement));
			flammeRec.localScale = new Vector3(1,1-deplacement,1);
		}
	}
}
