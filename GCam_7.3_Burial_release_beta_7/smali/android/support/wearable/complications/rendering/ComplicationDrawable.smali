.class public Landroid/support/wearable/complications/rendering/ComplicationDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BORDER_STYLE_DASHED:I = 0x2

.field public static final BORDER_STYLE_NONE:I = 0x0

.field public static final BORDER_STYLE_SOLID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final FIELD_ACTIVE_STYLE_BUILDER:Ljava/lang/String; = "active_style_builder"

.field private static final FIELD_AMBIENT_STYLE_BUILDER:Ljava/lang/String; = "ambient_style_builder"

.field private static final FIELD_BOUNDS:Ljava/lang/String; = "bounds"

.field private static final FIELD_HIGHLIGHT_DURATION:Ljava/lang/String; = "highlight_duration"

.field private static final FIELD_NO_DATA_TEXT:Ljava/lang/String; = "no_data_text"

.field private static final FIELD_RANGED_VALUE_PROGRESS_HIDDEN:Ljava/lang/String; = "ranged_value_progress_hidden"

.field private static final TAG:Ljava/lang/String; = "ComplicationDrawable"


# instance fields
.field private final mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

.field private mAlreadyStyled:Z

.field private final mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

.field private mBurnInProtection:Z

.field private mComplicationRenderer:Lxt;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeMillis:J

.field private mHighlightDuration:J

.field private mInAmbientMode:Z

.field private mIsHighlighted:Z

.field private mIsInflatedFromXml:Z

.field private mIsStyleUpToDate:Z

.field private mLowBitAmbient:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mNoDataText:Ljava/lang/CharSequence;

.field private mRangedValueProgressHidden:Z

.field private final mRendererInvalidateListener:Lxr;

.field private final mUnhighlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxj;

    invoke-direct {v0}, Lxj;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lxk;

    invoke-direct {v0, p0}, Lxk;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lxl;

    invoke-direct {v0, p0}, Lxl;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Lxr;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lxk;

    invoke-direct {v0, p0}, Lxk;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lxl;

    invoke-direct {v0, p0}, Lxl;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Lxr;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "active_style_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const-string v0, "ambient_style_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const-string v0, "no_data_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    const-string v0, "highlight_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    const-string v0, "ranged_value_progress_hidden"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    const-string v0, "bounds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lxj;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lxk;

    invoke-direct {v0, p0}, Lxk;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lxl;

    invoke-direct {v0, p0}, Lxl;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Lxr;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iget-object v1, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iget-object v1, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iget-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    iget-wide v0, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    iput-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    iget-boolean v0, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    return-void
.end method

.method private assertInitialized()V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ComplicationDrawable does not have a context. Use setContext(Context) to set it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :goto_0
    return-object p1
.end method

.method private inflateAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lxb;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setRangedValueProgressHidden(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object v0, Lxb;->e:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f060065

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a:I

    :cond_0
    nop

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:Landroid/graphics/drawable/Drawable;

    :cond_1
    nop

    const/16 v1, 0xe

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f06006b

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:I

    :cond_2
    nop

    const/16 v1, 0x11

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f06006c

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    :cond_3
    nop

    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:Landroid/graphics/Typeface;

    :cond_4
    nop

    const/16 v1, 0x13

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    :cond_5
    nop

    const/16 v0, 0xf

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f070092

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:I

    :cond_6
    nop

    const/16 v0, 0x12

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f070093

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    :cond_7
    nop

    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f060068

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:I

    :cond_8
    nop

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f060066

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    :cond_9
    nop

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f07008f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    :cond_a
    nop

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0c0014

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a(I)V

    :cond_b
    nop

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f07008e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    :cond_c
    nop

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f07008d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    :cond_d
    nop

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f070090

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    :cond_e
    nop

    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f070091

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    :cond_f
    nop

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f060069

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    :cond_10
    nop

    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f06006a

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    :cond_11
    nop

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x7f060067

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    :cond_12
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V
    .locals 3

    const v0, 0x7f060065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a:I

    const v0, 0x7f06006b

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:I

    const v0, 0x7f06006c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const v0, 0x7f1300d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:Landroid/graphics/Typeface;

    const v0, 0x7f1300d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    const v0, 0x7f070092

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:I

    const v0, 0x7f070093

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    const v0, 0x7f060068

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:I

    const v0, 0x7f060066

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    const v0, 0x7f070090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    const v0, 0x7f07008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    const v0, 0x7f0c0014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a(I)V

    const v0, 0x7f07008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const v0, 0x7f07008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const v0, 0x7f070091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    const v0, 0x7f060069

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const v0, 0x7f06006a

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    const v0, 0x7f060067

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    return-void
.end method

.method private updateStyleIfRequired()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Lxv;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Lxv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxt;->a(Lxv;Lxv;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->assertInitialized()V

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->updateStyleIfRequired()V

    iget-object v8, v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    iget-wide v1, v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mCurrentTimeMillis:J

    iget-boolean v3, v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mInAmbientMode:Z

    iget-boolean v4, v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mLowBitAmbient:Z

    iget-boolean v5, v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mBurnInProtection:Z

    iget-boolean v9, v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsHighlighted:Z

    iget-object v6, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v6, :cond_19

    iget v10, v6, Landroid/support/wearable/complications/ComplicationData;->b:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_19

    const/4 v12, 0x1

    if-eq v10, v12, :cond_19

    iget-object v10, v6, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    const-wide/16 v13, 0x0

    const-string v15, "START_TIME"

    invoke-virtual {v10, v15, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v10, v1, v13

    if-ltz v10, :cond_19

    iget-object v6, v6, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    const-wide v13, 0x7fffffffffffffffL

    const-string v10, "END_TIME"

    invoke-virtual {v6, v10, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v6, v1, v13

    if-gtz v6, :cond_19

    iget-object v6, v8, Lxt;->c:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    if-eqz v3, :cond_2

    iget-object v3, v8, Lxt;->w:Lxs;

    iget-boolean v6, v3, Lxs;->j:Z

    if-eq v6, v4, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget-boolean v3, v3, Lxs;->k:Z

    if-eq v3, v5, :cond_1

    goto :goto_0

    :goto_1
    new-instance v3, Lxs;

    iget-object v6, v8, Lxt;->z:Lxv;

    invoke-direct {v3, v6, v12, v4, v5}, Lxs;-><init>(Lxv;ZZZ)V

    iput-object v3, v8, Lxt;->w:Lxs;

    :cond_1
    iget-object v3, v8, Lxt;->w:Lxs;

    move-object v10, v3

    goto :goto_2

    :cond_2
    iget-object v3, v8, Lxt;->v:Lxs;

    move-object v10, v3

    :goto_2
    iget-object v3, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->b()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_4

    iget-object v3, v8, Lxt;->l:Lxy;

    invoke-virtual {v3, v12}, Lxy;->b(I)V

    iget-object v3, v8, Lxt;->l:Lxy;

    iget-object v5, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v5}, Landroid/support/wearable/complications/ComplicationData;->b()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v5

    iget-object v6, v8, Lxt;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v2}, Landroid/support/wearable/complications/ComplicationText;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lxy;->a(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->a()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v8, Lxt;->m:Lxy;

    iget-object v5, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v5}, Landroid/support/wearable/complications/ComplicationData;->a()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v5

    iget-object v6, v8, Lxt;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v2}, Landroid/support/wearable/complications/ComplicationText;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lxy;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v3, v8, Lxt;->m:Lxy;

    invoke-virtual {v3, v4}, Lxy;->a(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    iget-object v3, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->d()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v8, Lxt;->l:Lxy;

    iget-object v5, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v5}, Landroid/support/wearable/complications/ComplicationData;->d()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v5

    iget-object v6, v8, Lxt;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v2}, Landroid/support/wearable/complications/ComplicationText;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lxy;->a(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->c()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v8, Lxt;->m:Lxy;

    iget-object v4, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v4}, Landroid/support/wearable/complications/ComplicationData;->c()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v4

    iget-object v5, v8, Lxt;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v2}, Landroid/support/wearable/complications/ComplicationText;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lxy;->a(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lxt;->l:Lxy;

    invoke-virtual {v1, v12}, Lxy;->b(I)V

    goto :goto_4

    :cond_5
    iget-object v1, v8, Lxt;->m:Lxy;

    invoke-virtual {v1, v4}, Lxy;->a(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lxt;->l:Lxy;

    invoke-virtual {v1, v11}, Lxy;->b(I)V

    :cond_6
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v8, Lxt;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, v8, Lxt;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v10, Lxs;->h:Lxv;

    invoke-virtual {v8, v1}, Lxt;->a(Lxv;)I

    move-result v1

    int-to-float v2, v1

    iget-object v3, v8, Lxt;->o:Landroid/graphics/RectF;

    iget-object v4, v10, Lxs;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v10, Lxs;->h:Lxv;

    iget-object v2, v2, Lxv;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v10}, Lxs;->a()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v8, Lxt;->i:Lxx;

    iget-object v3, v10, Lxs;->h:Lxv;

    iget-object v3, v3, Lxv;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lxx;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v8, Lxt;->i:Lxx;

    iput v1, v2, Lxx;->b:I

    iget-object v1, v8, Lxt;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Lxx;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v8, Lxt;->i:Lxx;

    invoke-virtual {v1, v7}, Lxx;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v1, v8, Lxt;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    iget-object v1, v8, Lxt;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual {v10}, Lxs;->a()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    iget-object v3, v8, Lxt;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    move-object v1, v3

    :cond_a
    :goto_5
    iget-object v3, v10, Lxs;->l:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v8, Lxt;->p:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    :goto_6
    iget-object v1, v8, Lxt;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v10}, Lxs;->a()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v8, Lxt;->k:Lxx;

    iget-object v3, v8, Lxt;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lxx;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v8, Lxt;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_c
    iget-object v1, v8, Lxt;->k:Lxx;

    iget-object v3, v8, Lxt;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lxx;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v8, Lxt;->g:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    :goto_7
    iget-object v1, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->g()I

    move-result v1

    if-ne v1, v11, :cond_e

    iget-object v1, v8, Lxt;->k:Lxx;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lxx;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v8, Lxt;->k:Lxx;

    iput v2, v1, Lxx;->b:I

    goto :goto_8

    :cond_e
    iget-object v1, v8, Lxt;->k:Lxx;

    iget-object v2, v10, Lxs;->h:Lxv;

    iget-object v2, v2, Lxv;->j:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lxx;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v8, Lxt;->k:Lxx;

    iget-object v2, v10, Lxs;->h:Lxv;

    iget-object v3, v8, Lxt;->q:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v3}, Lxt;->a(Lxv;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, v1, Lxx;->b:I

    :goto_8
    iget-object v1, v8, Lxt;->k:Lxx;

    iget-object v2, v8, Lxt;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lxx;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v8, Lxt;->k:Lxx;

    invoke-virtual {v1, v7}, Lxx;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    :goto_9
    iget-object v1, v8, Lxt;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v10}, Lxs;->a()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v8, Lxt;->j:Lxx;

    iget-object v2, v8, Lxt;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lxx;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v8, Lxt;->j:Lxx;

    iget-object v2, v10, Lxs;->h:Lxv;

    iget-object v3, v8, Lxt;->r:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v3}, Lxt;->a(Lxv;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, v1, Lxx;->b:I

    iget-object v1, v8, Lxt;->j:Lxx;

    iget-object v2, v8, Lxt;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lxx;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v8, Lxt;->j:Lxx;

    iget-object v2, v10, Lxs;->h:Lxv;

    iget-object v2, v2, Lxv;->j:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lxx;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v8, Lxt;->j:Lxx;

    invoke-virtual {v1, v7}, Lxx;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    iget-object v1, v8, Lxt;->u:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v2, v1, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v3, "MAX_VALUE"

    invoke-static {v3, v2}, Landroid/support/wearable/complications/ComplicationData;->a(Ljava/lang/String;I)V

    iget-object v1, v1, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v3, v2, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v4, "MIN_VALUE"

    invoke-static {v4, v3}, Landroid/support/wearable/complications/ComplicationData;->a(Ljava/lang/String;I)V

    iget-object v2, v2, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_11

    iget-object v2, v8, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v3, v2, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v4, "VALUE"

    invoke-static {v4, v3}, Landroid/support/wearable/complications/ComplicationData;->a(Ljava/lang/String;I)V

    iget-object v2, v2, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v1

    goto :goto_a

    :cond_11
    nop

    nop

    :goto_a
    const/high16 v11, 0x43b00000    # 352.0f

    mul-float v12, v2, v11

    iget-object v1, v10, Lxs;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v13, v1

    int-to-float v1, v13

    iget-object v2, v8, Lxt;->u:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v8, Lxt;->u:Landroid/graphics/RectF;

    const/high16 v3, -0x3d500000    # -88.0f

    const/4 v5, 0x0

    iget-object v6, v10, Lxs;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v2, v8, Lxt;->u:Landroid/graphics/RectF;

    const/high16 v1, -0x3d500000    # -88.0f

    add-float/2addr v1, v12

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v3, v1

    sub-float v4, v11, v12

    iget-object v6, v10, Lxs;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    neg-int v1, v13

    int-to-float v1, v1

    iget-object v2, v8, Lxt;->u:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_12
    iget-object v1, v8, Lxt;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v8, Lxt;->x:Landroid/text/TextPaint;

    iget-object v2, v10, Lxs;->a:Landroid/text/TextPaint;

    if-eq v1, v2, :cond_13

    iput-object v2, v8, Lxt;->x:Landroid/text/TextPaint;

    iget-object v1, v8, Lxt;->l:Lxy;

    iget-object v2, v8, Lxt;->x:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Lxy;->a(Landroid/text/TextPaint;)V

    iget-object v1, v8, Lxt;->l:Lxy;

    iget-boolean v2, v10, Lxs;->i:Z

    invoke-virtual {v1, v2}, Lxy;->a(Z)V

    :cond_13
    iget-object v1, v8, Lxt;->l:Lxy;

    iget-object v2, v8, Lxt;->s:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v2}, Lxy;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_14
    iget-object v1, v8, Lxt;->t:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v8, Lxt;->y:Landroid/text/TextPaint;

    iget-object v2, v10, Lxs;->b:Landroid/text/TextPaint;

    if-eq v1, v2, :cond_15

    iput-object v2, v8, Lxt;->y:Landroid/text/TextPaint;

    iget-object v1, v8, Lxt;->m:Lxy;

    iget-object v2, v8, Lxt;->y:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Lxy;->a(Landroid/text/TextPaint;)V

    iget-object v1, v8, Lxt;->m:Lxy;

    iget-boolean v2, v10, Lxs;->i:Z

    invoke-virtual {v1, v2}, Lxy;->a(Z)V

    :cond_15
    iget-object v1, v8, Lxt;->m:Lxy;

    iget-object v2, v8, Lxt;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v2}, Lxy;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_16
    if-eqz v9, :cond_17

    iget-boolean v1, v10, Lxs;->i:Z

    if-nez v1, :cond_17

    iget-object v1, v10, Lxs;->h:Lxv;

    invoke-virtual {v8, v1}, Lxt;->a(Lxv;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v8, Lxt;->o:Landroid/graphics/RectF;

    iget-object v3, v10, Lxs;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_17
    iget-object v1, v10, Lxs;->h:Lxv;

    iget v2, v1, Lxv;->m:I

    if-eqz v2, :cond_18

    invoke-virtual {v8, v1}, Lxt;->a(Lxv;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v8, Lxt;->o:Landroid/graphics/RectF;

    iget-object v3, v10, Lxs;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_19
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;J)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->assertInitialized()V

    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setCurrentTimeMillis(J)V

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getActiveStyle()Lxv;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Lxv;

    move-result-object v0

    return-object v0
.end method

.method getAmbientStyle()Lxv;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Lxv;

    move-result-object v0

    return-object v0
.end method

.method getComplicationRenderer()Lxt;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    return-object v0
.end method

.method public getHighlightDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    return-wide v0
.end method

.method getNoDataText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsInflatedFromXml:Z

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p4

    invoke-direct {p0, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-static {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-static {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-direct {p0, p3, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, p3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ambient"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p3, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2b

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown element: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ComplicationDrawable "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplicationDrawable"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, p4, :cond_0

    :cond_3
    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public isHighlighted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsHighlighted:Z

    return v0
.end method

.method public isRangedValueProgressHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lxt;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onTap(II)Z
    .locals 4

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lxt;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/app/PendingIntent;

    move-result-object v2

    const/16 v3, 0x9

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/wearable/complications/ComplicationData;->b:I

    if-ne v2, v3, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, v0, Landroid/support/wearable/complications/ComplicationData;->b:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    instance-of p2, p1, Lyq;

    if-eqz p2, :cond_1

    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lxe;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.support.wearable.complications.ACTION_PERMISSION_REQUEST_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getHighlightDuration()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setIsHighlighted(Z)V

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->invalidateSelf()V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getHighlightDuration()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return v2

    :catch_0
    move-exception p1

    :cond_4
    return v1
.end method

.method public onTap(IIJ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->onTap(II)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBackgroundColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBackgroundDrawableActive(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput-object p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBackgroundDrawableAmbient(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput-object p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashGapActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashGapAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashWidthActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashWidthAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderRadiusActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderRadiusAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderStyleActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a(I)V

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderStyleAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderWidthActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderWidthAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBurnInProtection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mBurnInProtection:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setComplicationData(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->assertInitialized()V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    invoke-virtual {v0, p1}, Lxt;->a(Landroid/support/wearable/complications/ComplicationData;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsInflatedFromXml:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    :goto_0
    new-instance v0, Lxt;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Lxv;

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v3}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Lxv;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lxt;-><init>(Landroid/content/Context;Lxv;Lxv;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Lxr;

    iput-object v1, v0, Lxt;->A:Lxr;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    const v0, 0x7f1300d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setNoDataText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lxt;->a(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    invoke-virtual {p1, v0}, Lxt;->a(Z)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxt;->a(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"context\" should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mCurrentTimeMillis:J

    return-void
.end method

.method public setHighlightColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setHighlightColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setHighlightDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Highlight duration should be non-negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setIconColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setImageColorFilterActive(Landroid/graphics/ColorFilter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput-object p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:Landroid/graphics/ColorFilter;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setImageColorFilterAmbient(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput-object p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setInAmbientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mInAmbientMode:Z

    return-void
.end method

.method public setIsHighlighted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsHighlighted:Z

    return-void
.end method

.method public setLowBitAmbient(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mLowBitAmbient:Z

    return-void
.end method

.method public setNoDataText(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lxt;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setRangedValuePrimaryColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValuePrimaryColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueProgressHidden(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Lxt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lxt;->a(Z)V

    :cond_0
    return-void
.end method

.method public setRangedValueRingWidthActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueRingWidthAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueSecondaryColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueSecondaryColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextSizeActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextSizeAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextTypefaceActive(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput-object p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:Landroid/graphics/Typeface;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextTypefaceAmbient(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput-object p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleSizeActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleSizeAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleTypefaceActive(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    iput-object p1, v1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleTypefaceAmbient(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    iput-object p1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const-string v1, "active_style_builder"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const-string v1, "ambient_style_builder"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    const-string v1, "no_data_text"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    const-string v2, "highlight_duration"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    const-string v1, "ranged_value_progress_hidden"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "bounds"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
