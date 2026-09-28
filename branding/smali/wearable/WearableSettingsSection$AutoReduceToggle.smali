.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoReduceToggle;
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
    name = "AutoReduceToggle"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoReduceToggle;->a:Landroid/app/Activity;

    .line 278
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoReduceToggle;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 283
    return-void
.end method
