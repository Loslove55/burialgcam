.class public final Lgqy;
.super Landroid/support/constraint/ConstraintLayout;


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Lgpx;

.field public j:Lgqa;

.field public final k:Landroid/content/Context;

.field public final l:Lgqe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgpx;Lgqa;Lgqe;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgqy;->i:Lgpx;

    iput-object p3, p0, Lgqy;->j:Lgqa;

    iput-object p1, p0, Lgqy;->k:Landroid/content/Context;

    iput-object p4, p0, Lgqy;->l:Lgqe;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lgqy;->d:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lgqy;->e:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lgqy;->f:Ljava/util/Map;

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgqy;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgqy;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setId(I)V

    return-void
.end method


# virtual methods
.method public final a(Lgqa;)V
    .locals 8

    iput-object p1, p0, Lgqy;->j:Lgqa;

    iget-object v0, p0, Lgqy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lgqy;->e:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_0

    invoke-virtual {p0}, Lgqy;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0801c5

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lgqy;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0801c6

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgqy;->i:Lgpx;

    invoke-virtual {v0}, Lgpx;->e()Lohc;

    move-result-object v0

    invoke-virtual {v0}, Lohc;->d()Lole;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpy;

    iget-object v2, v1, Lgpy;->a:Lgqa;

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lgqy;->h:Landroid/widget/TextView;

    iget v0, v1, Lgpy;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lgqy;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lgqy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v1, Lgpy;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lgqy;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lgqy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Lgpy;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
