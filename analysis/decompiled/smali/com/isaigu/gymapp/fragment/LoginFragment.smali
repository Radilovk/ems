.class public Lcom/isaigu/gymapp/fragment/LoginFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "LoginFragment.java"


# instance fields
.field private autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

.field private login:Lcom/isaigu/gymapp/widget/MyButton;

.field private password:Landroid/widget/EditText;

.field private rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

.field private userName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/LoginFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/LoginFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    .line 200
    .local v0, "userData":Lcom/isaigu/gymapp/bean/UserData;
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 206
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f00b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->userName:Landroid/widget/EditText;

    .line 55
    const v2, 0x7f0f013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->password:Landroid/widget/EditText;

    .line 56
    const v2, 0x7f0f013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 57
    const v2, 0x7f0f013c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 58
    const v2, 0x7f0f013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->login:Lcom/isaigu/gymapp/widget/MyButton;

    .line 60
    const v2, 0x7f0f00b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    .local v0, "logoImage":Landroid/widget/ImageView;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->login:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v3, Lcom/isaigu/gymapp/fragment/LoginFragment$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/LoginFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->autoLogin:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v3, Lcom/isaigu/gymapp/fragment/LoginFragment$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/LoginFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment;->rememberPassword:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v3, Lcom/isaigu/gymapp/fragment/LoginFragment$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/LoginFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->initView()V

    .line 195
    return-object v1
.end method

.method protected viewId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f040041

    return v0
.end method
