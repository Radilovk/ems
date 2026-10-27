.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SendRaw"
.end annotation


# instance fields
.field final e:Landroid/widget/EditText;

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1381
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;->e:Landroid/widget/EditText;

    .line 1382
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sendRaw(Landroid/widget/EditText;)V

    .line 1387
    return-void
.end method
