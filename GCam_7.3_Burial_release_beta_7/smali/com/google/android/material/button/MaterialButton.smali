.class public Lcom/google/android/material/button/MaterialButton;
.super Lqq;

# interfaces
.implements Landroid/widget/Checkable;
.implements Lnwu;


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:Lnth;

.field private final f:Ljava/util/LinkedHashSet;

.field private g:Landroid/graphics/PorterDuff$Mode;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/button/MaterialButton;->c:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04022f

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f140394

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lnyt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lqq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->f:Ljava/util/LinkedHashSet;

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->m:Z

    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->n:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v3, Lnti;->a:[I

    new-array v6, v10, [I

    const v5, 0x7f140394

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lnvk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->l:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v4}, Lnvy;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xd

    invoke-static {v2, v1, v4}, Lnvy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2, v5}, Lnl;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xa

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->o:I

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->j:I

    invoke-static {v11, v7, v8, v9}, Lnwk;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lnwi;

    move-result-object v2

    invoke-virtual {v2}, Lnwi;->a()Lnwk;

    move-result-object v2

    new-instance v5, Lnth;

    invoke-direct {v5, v0, v2}, Lnth;-><init>(Lcom/google/android/material/button/MaterialButton;Lnwk;)V

    iput-object v5, v0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v5, Lnth;->c:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v5, Lnth;->d:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Lnth;->e:I

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Lnth;->f:I

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lnth;->g:I

    int-to-float v6, v6

    iget-object v7, v5, Lnth;->b:Lnwk;

    invoke-virtual {v7}, Lnwk;->b()Lnwi;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnwi;->c(F)V

    invoke-virtual {v7, v6}, Lnwi;->d(F)V

    invoke-virtual {v7, v6}, Lnwi;->b(F)V

    invoke-virtual {v7, v6}, Lnwi;->a(F)V

    invoke-virtual {v7}, Lnwi;->a()Lnwk;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnth;->a(Lnwk;)V

    :cond_1
    const/16 v6, 0x13

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lnth;->h:I

    const/4 v6, 0x6

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Lnvy;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v6, v1, v7}, Lnvy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lnth;->j:Landroid/content/res/ColorStateList;

    iget-object v6, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x12

    invoke-static {v6, v1, v7}, Lnvy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lnth;->k:Landroid/content/res/ColorStateList;

    iget-object v6, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xf

    invoke-static {v6, v1, v7}, Lnvy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lnth;->l:Landroid/content/res/ColorStateList;

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Lnth;->o:Z

    const/16 v6, 0x8

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iget-object v7, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v7}, Lkb;->g(Landroid/view/View;)I

    move-result v7

    iget-object v8, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v8}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v8

    iget-object v9, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v9}, Lkb;->h(Landroid/view/View;)I

    move-result v9

    iget-object v11, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v11}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v11

    iget-object v12, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v13, Lnwe;

    iget-object v14, v5, Lnth;->b:Lnwk;

    invoke-direct {v13, v14}, Lnwe;-><init>(Lnwk;)V

    iget-object v14, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v14}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnwe;->a(Landroid/content/Context;)V

    iget-object v14, v5, Lnth;->j:Landroid/content/res/ColorStateList;

    invoke-static {v13, v14}, Llh;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v14, v5, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v13, v14}, Llh;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget v14, v5, Lnth;->h:I

    int-to-float v14, v14

    iget-object v15, v5, Lnth;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v13, v14, v15}, Lnwe;->a(FLandroid/content/res/ColorStateList;)V

    new-instance v14, Lnwe;

    iget-object v15, v5, Lnth;->b:Lnwk;

    invoke-direct {v14, v15}, Lnwe;-><init>(Lnwk;)V

    invoke-virtual {v14, v10}, Lnwe;->setTint(I)V

    iget v15, v5, Lnth;->h:I

    int-to-float v15, v15

    invoke-virtual {v14, v15, v10}, Lnwe;->a(FI)V

    new-instance v15, Lnwe;

    iget-object v4, v5, Lnth;->b:Lnwk;

    invoke-direct {v15, v4}, Lnwe;-><init>(Lnwk;)V

    iput-object v15, v5, Lnth;->m:Landroid/graphics/drawable/Drawable;

    iget-object v4, v5, Lnth;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v3}, Llh;->a(Landroid/graphics/drawable/Drawable;I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, v5, Lnth;->l:Landroid/content/res/ColorStateList;

    invoke-static {v4}, Lnvt;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v14, v2, v10

    const/4 v14, 0x1

    aput-object v13, v2, v14

    invoke-direct {v15, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v13, v5, Lnth;->c:I

    iget v10, v5, Lnth;->e:I

    iget v14, v5, Lnth;->d:I

    iget v0, v5, Lnth;->f:I

    move-object/from16 v16, v15

    move-object v15, v2

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v14

    move/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v0, v5, Lnth;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v5, Lnth;->p:Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, v5, Lnth;->p:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {v12, v0}, Lqq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Lnth;->a()Lnwe;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v2, v6

    invoke-virtual {v0, v2}, Lnwe;->c(F)V

    :goto_2
    iget-object v0, v5, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    iget v2, v5, Lnth;->c:I

    add-int/2addr v7, v2

    iget v2, v5, Lnth;->e:I

    add-int/2addr v8, v2

    iget v2, v5, Lnth;->d:I

    add-int/2addr v9, v2

    iget v2, v5, Lnth;->f:I

    add-int/2addr v11, v2

    invoke-static {v0, v7, v8, v9, v11}, Lkb;->a(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/material/button/MaterialButton;->l:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    iget-object v1, v0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    nop

    const/4 v10, 0x0

    :goto_3
    invoke-direct {v0, v10}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/Button;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/CompoundButton;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Llh;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0}, Llh;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_1
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    if-eq v0, v2, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-nez p1, :cond_9

    invoke-static {p0}, Llh;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object v0, p1, v1

    aget-object p1, p1, v2

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_7

    :cond_6
    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_8

    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButton;->b(Z)V

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButton;->b(Z)V

    return-void
.end method

.method private final b(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, v0, v0, v0}, Llh;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v0, p1, v0}, Llh;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final c()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    invoke-interface {v4, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {p0}, Lkb;->h(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    sub-int/2addr v4, v0

    invoke-static {p0}, Lkb;->g(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {p0}, Lkb;->f(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-eq v0, v1, :cond_5

    neg-int v4, v4

    :cond_5
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eq v0, v4, :cond_6

    iput v4, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void

    :cond_8
    return-void
.end method

.method private final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lnth;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    iget-object v1, v0, Lnth;->j:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lnth;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object p1

    iget-object v0, v0, Lnth;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Llh;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lqq;->b:Lqp;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lqp;->a(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    iget-object v1, v0, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object p1

    iget-object v0, v0, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Llh;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lqq;->b:Lqp;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lqp;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method

.method public final a(Lnwk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    invoke-virtual {v0, p1}, Lnth;->a(Lnwk;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lnth;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    iget-object v0, v0, Lnth;->j:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqq;->b:Lqp;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lqp;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    iget-object v0, v0, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqq;->b:Lqp;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lqp;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lqq;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object v0

    iget-object v1, v0, Lnwe;->a:Lnwd;

    iget-object v1, v1, Lnwd;->b:Lnuu;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lnuu;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lkb;->l(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lnwe;->a:Lnwd;

    iget v3, v1, Lnwd;->n:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput v2, v1, Lnwd;->n:F

    invoke-virtual {v0}, Lnwe;->d()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Lqq;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->c:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->d:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lqq;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lqq;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lqq;->onLayout(ZIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lqq;->onMeasure(II)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    return-void
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lqq;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    invoke-super {p0}, Lqq;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnwe;->setTint(I)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lqq;->setBackgroundColor(I)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "Do not set the background; MaterialButton manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnth;->n:Z

    iget-object v1, v0, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v0, Lnth;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lnth;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, v0, Lnth;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Lqq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_1
    invoke-super {p0, p1}, Lqq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnl;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lqq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lntg;

    invoke-interface {v0}, Lntg;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    :cond_1
    return-void
.end method

.method public final setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Lqq;->setElevation(F)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lnth;

    invoke-virtual {v0}, Lnth;->a()Lnwe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnwe;->c(F)V

    :cond_0
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
