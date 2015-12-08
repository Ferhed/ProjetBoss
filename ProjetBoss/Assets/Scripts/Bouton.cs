using UnityEngine;
using System.Collections;

public class Bouton : MonoBehaviour {

	public GameObject ascenseur;
	PorteAscenseur porte;

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
	
	}
	public void utiliserBouton()
	{
		if(monType == TYPE.OUVERTURE)
		{
			porte.ouverturePorte();
		}
	}
}
