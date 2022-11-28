import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        copyDatabase()
        
        let daoObject = Kisilerdao()
        
        var gelenKisiler = daoObject.tumKisileriAl()
        gelenKisiler.forEach{
            print("id : \($0.kisi_id!)  //  ad : \($0.kisi_ad!)  //  yas : \($0.kisi_yas!)")
        }
            /*
        daoObject.kisiEkle(kisi_ad: "Muammer", kisi_yas: 30)
        daoObject.kisiEkle(kisi_ad: "Bilge", kisi_yas: 4)
        daoObject.kisiEkle(kisi_ad: "Tullah", kisi_yas: 31)
        
        let gelenKisiler = daoObject.tumKisileriAl()
        gelenKisiler.forEach{
            print("id : \($0.kisi_id!)  //  ad : \($0.kisi_ad!)  //  yas : \($0.kisi_yas!)")
        }
             */
//        print("Kisi silme baslatiliyor")
//        daoObject.hepsiniSil()
//        daoObject.kisiEkle(kisi_ad: "Muammer", kisi_yas: 30)
//        gelenKisiler = daoObject.tumKisileriAl()
//        gelenKisiler.forEach{
//            print("id : \($0.kisi_id!)  //  ad : \($0.kisi_ad!)  //  yas : \($0.kisi_yas!)")
//        }
    }


    func copyDatabase(){
        let bundleYolu = Bundle.main.path(forResource: "kisilergiris", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let kopyalanacakYer = URL(filePath: hedefYol).appending(path: "kisilergiris.sqlite")
        
        if(fileManager.fileExists(atPath: kopyalanacakYer.path())) {
            print("Database already exist")
        } else {
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path())
                print("Database was copied")
            } catch {
                print(error)
            }
        }
    }
}

