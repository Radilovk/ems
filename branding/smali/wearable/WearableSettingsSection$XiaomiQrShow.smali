.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiQrShow"
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

.field private final png:[B


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;[B)V
    .registers 3

    .prologue
    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    .line 1443
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->png:[B

    .line 1444
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->closed:Z

    if-eqz v0, :cond_7

    .line 1457
    :goto_6
    return-void

    .line 1452
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->png:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->png:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1453
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrShow;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->status:Landroid/widget/TextView;

    const-string v1, "\u0427\u0430\u043a\u0430\u043c \u0434\u0430 \u0441\u043a\u0430\u043d\u0438\u0440\u0430\u0448 \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0434\u0438\u0448 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430\u2026"

    const-string v2, "Waiting for you to scan and confirm on the phone\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_27} :catch_28

    goto :goto_6

    .line 1455
    :catch_28
    move-exception v0

    goto :goto_6
.end method
