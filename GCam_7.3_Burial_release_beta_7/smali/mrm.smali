.class final synthetic Lmrm;
.super Ljava/lang/Object;

# interfaces
.implements Lmrr;


# instance fields
.field private final a:Lmrp;


# direct methods
.method public constructor <init>(Lmrp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmrm;->a:Lmrp;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 6

    iget-object v0, p0, Lmrm;->a:Lmrp;

    const/4 v1, 0x4

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lmrp;->a(IDD)V

    return-void
.end method
