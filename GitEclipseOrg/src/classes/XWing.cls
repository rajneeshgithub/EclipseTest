public class XWing {
  // Attributes usually come first!
  // Addinf comment line 1
  String  name;
  Integer protonTorpedoes;
  Integer deathStarsDestroyed;
  Decimal powerRemaining;

  String customerName;
  
  User    pilot;
  Account manufacturer;

  String lasers;
  String engine;
  String shield;
  String droid;

  // Constructor(s) are next
  public XWing(String nickname, User myUser) {
    name                = nickname;  
    protonTorpedoes     = 2;
    deathStarsDestroyed = 0;
    powerRemaining      = 1.00;
    pilot               = myUser;
  }

  // Finally comes the methods
  public void shootLasers(Integer numberOfShots) {
    for (Integer i = 0; i < numberOfShots; i++) {
      System.debug('PEW!');
    }
  }

  public void fireProtonTorpedo() {
    if (protonTorpedoes > 0) {
      System.debug('KABOOM!!!');
      protonTorpedoes--;  
      deathStarsDestroyed++;
    }
  } 

  public Boolean initiateHyperdrive() {
    Boolean isSuccess = false;    
    if (powerRemaining > 0.10) {
      System.debug('Zoom zoom, WEEE!');
      powerRemaining = powerRemaining - 0.10;
      isSuccess = true;
    }
    return isSuccess;
  }
}