﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class UIManager : MonoBehaviour {
	
	static UIManager instance;
	public static UIManager Instance
	{
		get
		{
			return instance;
		}
	}
	void Awake()
	{
		instance = this;
	}

	public GameObject panel;
	public Text text;
	public GameObject player;
	FirstPersonController controller;

	void Start()
	{
		player = GameObject.FindGameObjectWithTag ("Player");
		controller = player.GetComponent<FirstPersonController> ();
	}

	public void launchUI(string word , int percent)
	{
		//StartCoroutine("UIAffichage",(word, percent));
		StartCoroutine(UIAffichage(word,percent));
	}

    public void lauchDeathUI()
    {
        StartCoroutine(UIDeath());
    }

    IEnumerator UIDeath()
    {
        controller.enabled = false;
        Color colorPanel = panel.GetComponent<Image>().color;
        text.text = "You are dead !";
        Color colorText = text.color;
        float currentColor = 0;

        colorPanel.r = 0;
        colorPanel.g = 0;
        colorPanel.b = 0;

        colorText.r = 255;
        colorText.g = 0;
        colorText.b = 0;

        while (currentColor < 1)
        {
            //Debug.Log(currentColor);
            currentColor += 0.05f;
            panel.GetComponent<Image>().color = new Color(colorPanel.r, colorPanel.g, colorPanel.b, currentColor / 2);
            text.color = new Color(colorText.r, colorText.g, colorText.b, currentColor);

            yield return new WaitForSeconds(0.001f);
        }

        Time.timeScale = 0;
    }

	IEnumerator UIAffichage(string word, int percent)
	{
		controller.enabled = false;
		float pourcentage = percent;
		Time.timeScale = 1*(pourcentage/100);
		Color colorPanel = panel.GetComponent<Image>().color;
		text.text = word;
		Color colorText = text.color;
		float currentColor = 0;
		while(currentColor < 1)
		{
			//Debug.Log(currentColor);
			currentColor += 0.05f;
			panel.GetComponent<Image>().color = new Color(colorPanel.r, colorPanel.g, colorPanel.b, currentColor / 2);
			text.color = new Color(colorText.r, colorText.g, colorText.b, currentColor);
			
			yield return new WaitForSeconds(0.01f/pourcentage);
		}
		yield return new WaitForSeconds(3f/pourcentage);

		while (currentColor > 0)
		{
			//Debug.Log(currentColor);
			currentColor -= 0.075f;
			panel.GetComponent<Image>().color = new Color(colorPanel.r, colorPanel.g, colorPanel.b, currentColor / 2);
			text.color = new Color(colorText.r, colorText.g, colorText.b, currentColor);

			yield return new WaitForSeconds(0.03f/pourcentage);
		}
		while(Time.timeScale < 1)
		{
			Time.timeScale += 0.1f;
			yield return new WaitForSeconds(0.015f/Time.timeScale);
		}

		Time.timeScale = 1;
		
		controller.enabled = true;
	}
}