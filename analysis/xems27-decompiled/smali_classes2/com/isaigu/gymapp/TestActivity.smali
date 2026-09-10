.class public Lcom/isaigu/gymapp/TestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/TestActivity;->requestWindowFeature(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/TestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/TestActivity;->setContentView(I)V

    .line 24
    return-void
.end method
