.class public final Lkn;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkn;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIII)Lkn;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lkn;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lkn;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
