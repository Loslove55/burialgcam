.class public final Lnxy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/textfield/TextInputLayout;

.field public c:Landroid/animation/Animator;

.field public d:I

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Z

.field public h:Landroid/widget/TextView;

.field public i:Ljava/lang/CharSequence;

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public l:Ljava/lang/CharSequence;

.field public m:Z

.field public n:Landroid/widget/TextView;

.field public o:I

.field public p:Landroid/content/res/ColorStateList;

.field private q:Landroid/widget/LinearLayout;

.field private r:I

.field private s:Landroid/widget/FrameLayout;

.field private t:I

.field private final u:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnxy;->a:Landroid/content/Context;

    iput-object p1, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lnxy;->u:F

    return-void
.end method

.method private static final a(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 6

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    if-ne p4, p6, :cond_0

    goto :goto_0

    :cond_0
    if-ne p4, p5, :cond_2

    :goto_0
    const/4 p2, 0x0

    if-eq p6, p4, :cond_1

    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    nop

    :goto_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p5, v2, v3

    invoke-static {p3, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v4, 0xa7

    invoke-virtual {p5, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lnsg;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_2

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 p5, 0x2

    new-array p5, p5, [F

    iget p6, p0, Lnxy;->u:F

    neg-float p6, p6

    aput p6, p5, v3

    aput p2, p5, v1

    invoke-static {p3, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p3, 0xd9

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p3, Lnsg;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static final c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private final d(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lnxy;->n:Landroid/widget/TextView;

    return-object p1

    :cond_1
    iget-object p1, p0, Lnxy;->h:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lnxy;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lnxy;->b()V

    iget v1, p0, Lnxy;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lnxy;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnxy;->l:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lnxy;->e:I

    :goto_1
    iget v1, p0, Lnxy;->d:I

    iget v2, p0, Lnxy;->e:I

    iget-object v3, p0, Lnxy;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Lnxy;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lnxy;->a(IIZ)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iput p1, p0, Lnxy;->j:I

    iget-object v0, p0, Lnxy;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    if-eq v8, v9, :cond_5

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v7, Lnxy;->c:Landroid/animation/Animator;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v7, Lnxy;->m:Z

    iget-object v3, v7, Lnxy;->n:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lnxy;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    iget-boolean v2, v7, Lnxy;->g:Z

    iget-object v3, v7, Lnxy;->h:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lnxy;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v14

    add-long/2addr v5, v14

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {v13, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-direct/range {p0 .. p1}, Lnxy;->d(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v7, v9}, Lnxy;->d(I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lnxx;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lnxx;-><init>(Lnxy;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    if-eq v8, v9, :cond_4

    if-eqz v9, :cond_2

    invoke-direct {v7, v9}, Lnxy;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    if-eqz v8, :cond_3

    invoke-direct/range {p0 .. p1}, Lnxy;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iput v9, v7, Lnxy;->d:I

    :cond_4
    :goto_1
    iget-object v0, v7, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    iget-object v0, v7, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    iget-object v0, v7, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    return-void

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lnxy;->k:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lnxy;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/TextView;I)V
    .locals 5

    iget-object v0, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnxy;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lnxy;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnxy;->c()V

    :cond_1
    :goto_0
    invoke-static {p2}, Lnxy;->c(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget p1, p0, Lnxy;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnxy;->t:I

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object p1, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget p1, p0, Lnxy;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnxy;->r:I

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lnxy;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Lnxy;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 4

    iget-object v0, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lkb;->w(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lnxy;->e:I

    iget v3, p0, Lnxy;->d:I

    if-eq v0, v3, :cond_0

    :goto_0
    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    nop

    return v1

    :cond_3
    :goto_1
    nop

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lnxy;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iput p1, p0, Lnxy;->o:I

    iget-object v0, p0, Lnxy;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Llh;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lnxy;->p:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lnxy;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lnxy;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    iget v0, p0, Lnxy;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnxy;->t:I

    invoke-static {p2, v0}, Lnxy;->a(Landroid/view/ViewGroup;I)V

    iget-object p2, p0, Lnxy;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget p1, p0, Lnxy;->r:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnxy;->r:I

    iget-object p2, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lnxy;->a(Landroid/view/ViewGroup;I)V

    return-void

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lnxy;->q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkb;->g(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lnxy;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v2}, Lkb;->h(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkb;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lnxy;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnxy;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnxy;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lnxy;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
