.class public Lcom/ButtonEXP;
.super Landroid/widget/ToggleButton;
.source "ButtonEXP.java"


# static fields
.field public static Icon:[Ljava/lang/String;

.field public static SelState:I

.field public static app:Lcom/ButtonEXP;

.field public static prefString:Ljava/lang/String;


# instance fields
.field public appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/ButtonEXP;->SelState:I

    const-string v0, "pref_exposure_key"

    sput-object v0, Lcom/ButtonEXP;->prefString:Ljava/lang/String;

    const-string v0, "pref_exp_off,pref_exp_on"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ButtonEXP;->Icon:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ButtonEXP$1;

    invoke-direct {v0, p0}, Lcom/ButtonEXP$1;-><init>(Lcom/ButtonEXP;)V

    iput-object v0, p0, Lcom/ButtonEXP;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/ButtonEXP;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/ButtonEXP$1;

    invoke-direct {v0, p0}, Lcom/ButtonEXP$1;-><init>(Lcom/ButtonEXP;)V

    iput-object v0, p0, Lcom/ButtonEXP;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/ButtonEXP;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/ButtonEXP$1;

    invoke-direct {v0, p0}, Lcom/ButtonEXP$1;-><init>(Lcom/ButtonEXP;)V

    iput-object v0, p0, Lcom/ButtonEXP;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/ButtonEXP;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/ButtonEXP$1;

    invoke-direct {v0, p0}, Lcom/ButtonEXP$1;-><init>(Lcom/ButtonEXP;)V

    iput-object v0, p0, Lcom/ButtonEXP;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/ButtonEXP;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getVisibility(I)V
    .locals 2

    sget-object v0, Lcom/ButtonEXP;->app:Lcom/ButtonEXP;

    const-string v1, "pref_show_exp_button_key"

    invoke-virtual {v0, v1}, Lcom/ButtonEXP;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/ButtonEXP;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateUi(Landroid/content/Context;)V
    .locals 7

    sget v1, Lcom/ButtonEXP;->SelState:I

    invoke-virtual {p0}, Lcom/ButtonEXP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v0, Lcom/ButtonEXP;->Icon:[Ljava/lang/String;

    aget-object v4, v0, v1

    const-string v5, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ButtonEXP;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/ButtonEXP;->invalidate()V

    return-void
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/ButtonEXP;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/ButtonEXP;->app:Lcom/ButtonEXP;

    iput-object p1, p0, Lcom/ButtonEXP;->appContext:Landroid/content/Context;

    sget-object v0, Lcom/ButtonEXP;->prefString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ButtonEXP;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ButtonEXP;->SelState:I

    invoke-virtual {p0, p1}, Lcom/ButtonEXP;->UpdateUi(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ButtonEXP;->appChangeListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/ButtonEXP;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/ButtonEXP;->appContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
