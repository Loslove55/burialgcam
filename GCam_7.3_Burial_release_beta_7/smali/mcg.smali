.class final synthetic Lmcg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lmcm;

.field private final b:Llyh;


# direct methods
.method public constructor <init>(Lmcm;Llyh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmcg;->a:Lmcm;

    iput-object p2, p0, Lmcg;->b:Llyh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmcg;->a:Lmcm;

    iget-object v1, p0, Lmcg;->b:Llyh;

    iget-object v0, v0, Lmcm;->b:Lmca;

    invoke-virtual {v0, v1}, Lmca;->b(Llyh;)V

    return-void
.end method
