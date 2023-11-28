-- Making a changelog
-- https://www.codewars.com/kata/5eaecb855179590011d2c020/train/sql

CREATE OR REPLACE FUNCTION MAKING_CHANGELOG()
    RETURNS TRIGGER AS
$MAKING_A_CHANGELOG$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO documents_changelog(document_id, old_data, new_data)
        VALUES (NEW.id, NULL, NEW.data);
    ELSEIF (TG_OP = 'UPDATE') THEN
        INSERT INTO documents_changelog(document_id, old_data, new_data)
        VALUES (OLD.id, OLD.data, NEW.data);
    ELSEIF (TG_OP = 'DELETE') THEN
        INSERT INTO documents_changelog(document_id, old_data, new_data)
        VALUES (OLD.id, OLD.data, NULL);
    END IF;
    RETURN NULL;
END;
$MAKING_A_CHANGELOG$
    LANGUAGE PLPGSQL;

CREATE TRIGGER TRIGGER_MAKING_A_CHANGELOG
    AFTER INSERT OR UPDATE OR DELETE
    ON documents
    FOR EACH ROW
EXECUTE PROCEDURE MAKING_CHANGELOG();