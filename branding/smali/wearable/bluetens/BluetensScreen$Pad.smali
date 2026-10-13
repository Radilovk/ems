.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
.super Ljava/lang/Object;
.source "BluetensScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pad"
.end annotation


# instance fields
.field battery:Landroid/widget/TextView;

.field card:Landroid/widget/LinearLayout;

.field control:Landroid/widget/LinearLayout;

.field hideWarn:Ljava/lang/Runnable;

.field link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

.field minus:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field plus:Landroid/widget/TextView;

.field status:Landroid/widget/TextView;

.field value:Landroid/widget/TextView;

.field warn:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
