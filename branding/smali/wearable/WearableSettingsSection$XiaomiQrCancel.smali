.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XiaomiQrCancel"
.end annotation


# instance fields
.field private final host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;)V
    .registers 2

    .prologue
    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1506
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    .line 1507
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->close()V

    .line 1517
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrCancel;->host:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiQrLogin;->close()V

    .line 1512
    return-void
.end method
