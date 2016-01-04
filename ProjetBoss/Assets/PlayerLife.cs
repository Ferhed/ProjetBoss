using UnityEngine;
using System.Collections;

public class PlayerLife : MonoBehaviour {

    bool dead = false;

    public bool immmmmmmmmmortal = false;

    public void Die()
    {
        if (!dead && !immmmmmmmmmortal)
        {
            dead = true;

            UIManager.Instance.lauchDeathUI();
        }
    }
}
