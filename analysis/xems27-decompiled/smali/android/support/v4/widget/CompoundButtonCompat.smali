.class public final Landroid/support/v4/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi23Impl;,
        Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi21Impl;,
        Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .local v0, "sdk":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 43
    new-instance v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi23Impl;

    invoke-direct {v1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi23Impl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    goto :goto_0

    .line 44
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 45
    new-instance v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi21Impl;

    invoke-direct {v1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi21Impl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    .line 49
    .end local v0    # "sdk":I
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 198
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 162
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 188
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 152
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 153
    return-void
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 178
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 179
    return-void
.end method
