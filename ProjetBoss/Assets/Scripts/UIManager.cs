using UnityEngine;
using System.Collections;
using UnityEngine.UI;

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

	public void launchUI(string word)
	{
		StartCoroutine("UIAffichage",word);
	}

	IEnumerator UIAffichage(string word)
	{
		Color colorPanel = panel.GetComponent<Image>().color;
		text.text = word;
		Color colorText = text.color;
		float currentColor = 0;
		while(currentColor < 1)
		{
			currentColor += 0.05f;
			panel.GetComponent<Image>().color = new Color(colorPanel.r, colorPanel.g, colorPanel.b, currentColor / 2);
			text.color = new Color(colorText.r, colorText.g, colorText.b, currentColor);
			
			yield return new WaitForSeconds(0.01f);
		}
		yield return new WaitForSeconds(2f);

		while (currentColor > 0)
		{
			currentColor -= 0.05f;
			currentColor -= 0.025f;
			panel.GetComponent<Image>().color = new Color(colorPanel.r, colorPanel.g, colorPanel.b, currentColor / 2);
			text.color = new Color(colorText.r, colorText.g, colorText.b, currentColor);

			yield return new WaitForSeconds(0.03f);
		}

		
	}
}
