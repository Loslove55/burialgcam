.class public final Ljza;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lgrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "focusPtNormalizer"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljza;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljza;->b:Lgrl;

    return-void
.end method

.method public static final a(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
