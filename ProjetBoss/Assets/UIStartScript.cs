using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UIStartScript : MonoBehaviour {

	bool isFade = true;
	GameObject[] tabMenu;
	Color fade;

	// Use this for initialization
	void Start () {
		tabMenu = GameObject.FindGameObjectsWithTag ("StartMenu");
		fade = new Color (1, 1, 1, 1);
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown ("B_button_1") || Input.GetKey(KeyCode.M) && isFade == true){isFade = false;}
		if(isFade == false && fade.a > 0)
		{
			fade.a -= 0.025f;
			foreach(GameObject go in tabMenu)
			{
				if (go.GetComponent<Image>()){go.GetComponent<Image>().color = fade;}
				if (go.GetComponent<Text>()){go.GetComponent<Text>().color = fade;}
				if (fade.a < 0)
				{
					if (go.GetComponent<Image>()){go.GetComponent<Image>().enabled = false;}
					if (go.GetComponent<Text>()){go.GetComponent<Text>().enabled = false;}
					//Application.LoadLevel("SceneJeu");
				}
			}
		}
	}
}
