.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RemoteToggle"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;->a:Landroid/app/Activity;

    .line 340
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandRemoteEnabled(Landroid/content/Context;Z)V

    .line 345
    return-void
.end method
