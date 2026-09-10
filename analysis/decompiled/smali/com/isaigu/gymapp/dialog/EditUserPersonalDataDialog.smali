.class public Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;,
        Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;
    }
.end annotation


# instance fields
.field private address:Landroid/widget/EditText;

.field private admitProtocol:Landroid/support/v7/widget/AppCompatCheckBox;

.field private alertDialog1:Landroid/support/v7/app/AlertDialog;

.field private birthday:Landroid/widget/TextView;

.field private cameraIcon:Landroid/widget/ImageView;

.field private city:Landroid/widget/EditText;

.field private close:Landroid/widget/Button;

.field private cropImageUri:Landroid/net/Uri;

.field private editMode:Z

.field private email:Landroid/widget/EditText;

.field private height:Landroid/widget/EditText;

.field private id:Landroid/widget/EditText;

.field private imageUri:Landroid/net/Uri;

.field private name:Landroid/widget/EditText;

.field private originalFile:Ljava/io/File;

.field private phone:Landroid/widget/EditText;

.field private programdatabutton:Landroid/widget/Button;

.field private protocolContent:Landroid/widget/TextView;

.field private save:Landroid/widget/Button;

.field private sex:Landroid/widget/TextView;

.field private trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

.field private userIcon:Landroid/widget/ImageView;

.field private weight:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->editMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->sex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->editMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->birthday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getPickerViewDataFromTrainProgram()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->programdatabutton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->userIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cameraIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->alertDialog1:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->createOriImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->originalFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->originalFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->showSexChooseDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->height:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->weight:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/support/v7/widget/AppCompatCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->admitProtocol:Landroid/support/v7/widget/AppCompatCheckBox;

    return-object v0
.end method

.method private createCropImageFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HomePic_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "imgNameCrop":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.isaigu.gymapp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/CropPicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    .local v2, "pictureDirCrop":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 766
    :cond_0
    const-string v3, ".jpg"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 771
    .local v0, "image":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp image exist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 772
    return-object v0
.end method

.method private createOriImageFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HomePic_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "imgNameOri":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/OriPicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    .local v2, "pictureDirOri":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 745
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 747
    :cond_0
    const-string v3, ".jpg"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 752
    .local v0, "image":Ljava/io/File;
    return-object v0
.end method

.method private getPickerViewDataFromTrainProgram()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v3, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 716
    .local v3, "trainPrograms":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v2, "pickerViewDatas":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 718
    new-instance v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Lcom/isaigu/gymapp/bean/PickerViewData;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 719
    .local v1, "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    .end local v1    # "pickerViewData":Lcom/isaigu/gymapp/bean/PickerViewData;
    :cond_0
    return-object v2
.end method

.method private handleFontSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n            <html xmlns=\"http://www.w3.org/1999/xhtml\">\n            <head>\n            <META http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n            <title></title>\n            <meta name=\"description\" content=\"\">\n            <meta name=\"keyword\" content=\"\">\n            <META name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n            <META name=\"apple-mobile-web-app-capable\" content=\"yes\">\n            <META name=\"apple-mobile-web-app-status-bar-style\" content=\"black\"> \n            </head>\n            <body>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            </body>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            <script language=\"javascript\">  \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                var eles = document.getElementsByTagName(\"p\");\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                for(var i = 0;i<eles.length;i++){\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                    eles[i].style[\"font-size\"] = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v1

    const/16 v3, 0x408

    if-ne v1, v3, :cond_0

    const/16 v1, 0xe

    :goto_0
    invoke-static {v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setSpText(I)F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px\'\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            </script>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            </html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "con":Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 254
    return-object v0

    .line 249
    .end local v0    # "con":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->name:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->name:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->email:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->email:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->id:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->id:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->phone:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->phone:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->city:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->city:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->address:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->address:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->height:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->height:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->weight:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->weight:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$EditTextWatcher;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->userIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->sex:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$4;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->admitProtocol:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$5;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->save:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->birthday:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$7;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->programdatabutton:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$9;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    return-void
.end method

.method private initSetData()V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    iget-object v0, v2, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;->content:Ljava/lang/String;

    .line 222
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->protocolContent:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .end local v0    # "content":Ljava/lang/String;
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->protocolContent:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    const v0, 0x7f0f009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->userIcon:Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f0f009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cameraIcon:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f0f009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->name:Landroid/widget/EditText;

    .line 189
    const v0, 0x7f0f009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->email:Landroid/widget/EditText;

    .line 190
    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->id:Landroid/widget/EditText;

    .line 191
    const v0, 0x7f0f00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->phone:Landroid/widget/EditText;

    .line 192
    const v0, 0x7f0f00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->city:Landroid/widget/EditText;

    .line 193
    const v0, 0x7f0f00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->address:Landroid/widget/EditText;

    .line 194
    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->sex:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0f00a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->height:Landroid/widget/EditText;

    .line 196
    const v0, 0x7f0f00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->birthday:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0f00a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->weight:Landroid/widget/EditText;

    .line 198
    const v0, 0x7f0f00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->protocolContent:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->protocolContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 203
    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->programdatabutton:Landroid/widget/Button;

    .line 204
    const v0, 0x7f0f00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->save:Landroid/widget/Button;

    .line 206
    const v0, 0x7f0f00aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->admitProtocol:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 208
    const v0, 0x7f0f00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->close:Landroid/widget/Button;

    .line 209
    return-void
.end method

.method private showSexChooseDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f08006e

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    .local v1, "sexArry":[Ljava/lang/String;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "builder3":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 182
    return-void
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f04001c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 538
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 539
    const/16 v9, 0x3e9

    if-ne p1, v9, :cond_4

    .line 540
    iget-object v9, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->imageUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    .line 541
    const-string v6, ""

    .line 542
    .local v6, "path":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 543
    .local v7, "sdkVersion":I
    const/16 v9, 0x13

    if-lt v7, v9, :cond_1

    .line 544
    iget-object v9, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->originalFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 548
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v4, "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 550
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v9

    const v10, 0x7f08008a

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 666
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "sdkVersion":I
    :cond_0
    :goto_1
    return-void

    .line 546
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "sdkVersion":I
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->imageUri:Landroid/net/Uri;

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/utils/ImageUtils;->getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 554
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    invoke-static {v4, v11}, Lcom/isaigu/gymapp/utils/AndroidUtils;->compressImageFile(Ljava/io/File;F)Ljava/io/File;

    move-result-object v0

    .line 555
    .local v0, "compressFile":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 556
    move-object v4, v0

    .line 558
    :cond_3
    new-instance v9, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$10;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$10;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_1

    .line 580
    .end local v0    # "compressFile":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "sdkVersion":I
    :cond_4
    const/16 v9, 0x3eb

    if-ne p1, v9, :cond_7

    .line 581
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 582
    .restart local v4    # "file":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 584
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 585
    .local v1, "cropPhotoFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cropImageUri:Landroid/net/Uri;

    .line 586
    const/4 v8, 0x0

    .line 587
    .local v8, "uri":Landroid/net/Uri;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_6

    .line 589
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.isaigu.gymapp.provider"

    .line 588
    invoke-static {v9, v10, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 599
    .end local v1    # "cropPhotoFile":Ljava/io/File;
    .end local v8    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-static {v4, v11}, Lcom/isaigu/gymapp/utils/AndroidUtils;->compressImageFile(Ljava/io/File;F)Ljava/io/File;

    move-result-object v0

    .line 600
    .restart local v0    # "compressFile":Ljava/io/File;
    if-eqz v0, :cond_5

    .line 601
    move-object v4, v0

    .line 603
    :cond_5
    new-instance v9, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$11;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$11;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_1

    .line 593
    .end local v0    # "compressFile":Ljava/io/File;
    .restart local v1    # "cropPhotoFile":Ljava/io/File;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 596
    .end local v1    # "cropPhotoFile":Ljava/io/File;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 597
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 617
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    :cond_7
    const/16 v9, 0x3ea

    if-ne p1, v9, :cond_0

    .line 619
    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v9

    new-instance v10, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$12;

    invoke-direct {v10, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$12;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-virtual {v9, v10}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 625
    const/4 v4, 0x0

    .line 626
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 627
    .restart local v8    # "uri":Landroid/net/Uri;
    if-nez v8, :cond_9

    .line 628
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 629
    .local v3, "face":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 630
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v3, v9, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 631
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 632
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 633
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    iget-object v9, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .end local v3    # "face":Landroid/graphics/Bitmap;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 639
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/utils/AndroidUtils;->compressImageFile(Ljava/io/File;F)Ljava/io/File;

    move-result-object v0

    .line 640
    .restart local v0    # "compressFile":Ljava/io/File;
    if-eqz v0, :cond_8

    .line 641
    move-object v4, v0

    .line 643
    :cond_8
    new-instance v9, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$13;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 661
    .end local v0    # "compressFile":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 662
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 635
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_9
    :try_start_3
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const v5, 0x7f03001c

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initView(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initListener()V

    .line 112
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initSetData()V

    .line 114
    iget-boolean v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->editMode:Z

    if-eqz v3, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 116
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 117
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v4, "sample"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->name:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->email:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->id:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->phone:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->city:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->address:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->sex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/mgr/CommonUtils;->getGenderString(Landroid/content/Context;Lcom/isaigu/gymapp/bean/Gender;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->height:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v3, 0x7f08003e

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "format":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->birthday:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-nez v3, :cond_6

    const-string v3, ""

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->weight:Landroid/widget/EditText;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v7, v7, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 134
    .local v0, "dataBean":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-eqz v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->programdatabutton:Landroid/widget/Button;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cameraIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->admitProtocol:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->permitProtocol:Z

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 145
    .end local v0    # "dataBean":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :goto_6
    return-object v2

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_0

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    goto/16 :goto_1

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    goto/16 :goto_2

    .line 126
    :cond_4
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    goto/16 :goto_3

    .line 127
    :cond_5
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    goto/16 :goto_4

    .line 131
    .restart local v1    # "format":Ljava/text/SimpleDateFormat;
    :cond_6
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 140
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    iput-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 142
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->cameraIcon:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v4, "sample"

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->onDestroyView()V

    .line 169
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->onStart()V

    .line 151
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 153
    .local v2, "win":Landroid/view/Window;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 156
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 160
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 161
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 162
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    return-void
.end method

.method readFile(Ljava/io/File;)[B
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 726
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 727
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 728
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v0    # "data":[B
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 733
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->editMode:Z

    .line 103
    return-void
.end method

.method public showList(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;

    .prologue
    .line 258
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f080029

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f08007e

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 259
    .local v1, "items":[Ljava/lang/String;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "alertBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->alertDialog1:Landroid/support/v7/app/AlertDialog;

    .line 270
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->alertDialog1:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 271
    return-void
.end method
