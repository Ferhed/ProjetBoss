using UnityEngine;
using System.Collections;

public class mapGenerator : MonoBehaviour {


    public GameObject tile;

    public int longueur = 10;
    public int largeur = 10;
    public GameObject[,] tiles;


    Vector3 tailleTile;

	// Use this for initialization
	void Start () {
        tailleTile = tile.transform.localScale;
        tiles = new GameObject[largeur,longueur];
        generator();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void generator()
    {
        GameObject parent = new GameObject();
        parent.name = "mapParent";
        GameObject wallParent = new GameObject();
        wallParent.name = "wallParent";
        Transform papaWall = wallParent.transform;
        papaWall.parent = parent.transform;
        GameObject tileParent = new GameObject();
        tileParent.name = "tileParent";
        tileParent.tag = "parentTile";
        Transform papaTile = tileParent.transform;
        papaTile.parent = parent.transform;

        for(int i = 0; i < largeur; i++)
        {
            for(int j = 0; j < longueur; j++)
            {
                GameObject go = Instantiate(tile, new Vector3(j * tailleTile.x, 0, i * tailleTile.z), Quaternion.identity) as GameObject;
                if (i == 0 || j == 0 || i == largeur-1 || j == longueur-1)
                {
                    Transform currentWall = go.transform;
                    currentWall.localScale = new Vector3(currentWall.localScale.x, 10f, currentWall.localScale.z);
                    currentWall.position = new Vector3(i*tailleTile.x, ( currentWall.position.y + currentWall.localScale.y/2),j*tailleTile.z);
                    go.name = "Wall " + i + "-" + j;
                    go.tag = "Wall";
                    go.transform.parent = papaWall;
                }
                else
                {
                    go.transform.parent = papaTile;
                    go.name = "Tile " + i + "-" + j;
                    go.GetComponent<CubeScript>().isFirst = false;
                    if (i == 1 || j == 1 || i == largeur - 2 || j == longueur - 2)
                    {
                        go.GetComponent<CubeScript>().isFirst = true; 
                    }
                    tiles[i, j] = go;
                }
            }
        }
    }

}
