-- Carlos Miranda - 862246355
-- Angelica Simityan - 862220199
CREATE SEQUENCE IF NOT EXISTS MESSAGE_id_seq START WITH 27812;

-- Increments the MESSAGE id to the next value when we dont provide one.
CREATE OR REPLACE FUNCTION MESSAGE_msgId_func()
RETURNS "trigger" AS
$BODY$
BEGIN
IF NEW.msgId is NULL THEN
	NEW.msgId := nextval('MESSAGE_id_seq');
	RETURN NEW;
END IF;
END;
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER MESSAGE_msgId_trigger BEFORE INSERT
ON MESSAGE FOR EACH ROW
EXECUTE PROCEDURE MESSAGE_msgId_func();